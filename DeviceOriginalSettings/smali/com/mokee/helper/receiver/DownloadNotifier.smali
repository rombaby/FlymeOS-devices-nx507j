.class public Lcom/mokee/helper/receiver/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private static createBaseContentBuilder(Landroid/content/Context;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 91
    const/high16 v1, 0x48000000    # 131072.0f

    invoke-static {p0, v4, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 94
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    return-object v1
.end method

.method private static createInstallPendingIntent(Landroid/content/Context;Ljava/io/File;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateFile"    # Ljava/io/File;
    .param p2, "flag"    # I

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mokee/helper/receiver/DownloadReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "installIntent":Landroid/content/Intent;
    const-string v1, "com.mokee.mkupdater.action.INSTALL_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "download_flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v1, "filename"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/4 v1, 0x0

    const/high16 v2, 0x48000000    # 131072.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static notifyDownloadComplete(Landroid/content/Context;Landroid/content/Intent;Ljava/io/File;I)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIntent"    # Landroid/content/Intent;
    .param p2, "updateFile"    # Ljava/io/File;
    .param p3, "flag"    # I

    .prologue
    .line 40
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 44
    .local v9, "updateUiName":Ljava/lang/String;
    const/16 v11, 0x400

    move/from16 v0, p3

    if-ne v0, v11, :cond_1

    .line 45
    const v5, 0x7f0a006c

    .line 46
    .local v5, "mContentTitleID":I
    const v7, 0x7f0a006c

    .line 47
    .local v7, "mTickerID":I
    const v4, 0x7f0a006e

    .line 48
    .local v4, "mActionTitleID":I
    const-string v11, "OTA"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v6, 0x7f0a0070

    .line 60
    .local v6, "mTextID":I
    :goto_0
    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {p0, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    .line 64
    .local v8, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    invoke-static/range {p0 .. p1}, Lcom/mokee/helper/receiver/DownloadNotifier;->createBaseContentBuilder(Landroid/content/Context;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x106005c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const v12, 0x7f020077

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const v12, 0x7f0200d8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v0, v1}, Lcom/mokee/helper/receiver/DownloadNotifier;->createInstallPendingIntent(Landroid/content/Context;Ljava/io/File;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 76
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 77
    .local v3, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v12, 0x7f020077

    const v13, 0x7f0a006e

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v0, v1}, Lcom/mokee/helper/receiver/DownloadNotifier;->createInstallPendingIntent(Landroid/content/Context;Ljava/io/File;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v10

    .line 82
    .local v10, "wearInstallAction":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 83
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 87
    return-void

    .line 48
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v6    # "mTextID":I
    .end local v8    # "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .end local v10    # "wearInstallAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_0
    const v6, 0x7f0a006f

    goto/16 :goto_0

    .line 50
    .end local v4    # "mActionTitleID":I
    .end local v5    # "mContentTitleID":I
    .end local v7    # "mTickerID":I
    :cond_1
    const v5, 0x7f0a0072

    .line 51
    .restart local v5    # "mContentTitleID":I
    const v7, 0x7f0a0072

    .line 52
    .restart local v7    # "mTickerID":I
    const-string v11, ".apk"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 53
    const v4, 0x7f0a0076

    .line 57
    .restart local v4    # "mActionTitleID":I
    :goto_1
    const v6, 0x7f0a0074

    .restart local v6    # "mTextID":I
    goto/16 :goto_0

    .line 55
    .end local v4    # "mActionTitleID":I
    .end local v6    # "mTextID":I
    :cond_2
    const v4, 0x7f0a006e

    .restart local v4    # "mActionTitleID":I
    goto :goto_1
.end method

.method public static notifyDownloadError(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateIntent"    # Landroid/content/Intent;
    .param p2, "failureMessageResId"    # I

    .prologue
    const v4, 0x7f0a006d

    .line 102
    invoke-static {p0, p1}, Lcom/mokee/helper/receiver/DownloadNotifier;->createBaseContentBuilder(Landroid/content/Context;Landroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x1080078

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 109
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f0a006c

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 111
    return-void
.end method
