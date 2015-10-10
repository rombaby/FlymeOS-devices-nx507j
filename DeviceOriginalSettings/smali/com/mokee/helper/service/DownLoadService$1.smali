.class Lcom/mokee/helper/service/DownLoadService$1;
.super Ljava/lang/Object;
.source "DownLoadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/service/DownLoadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/service/DownLoadService;


# direct methods
.method constructor <init>(Lcom/mokee/helper/service/DownLoadService;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 187
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v21, 0x0

    return v21

    .line 190
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 191
    .local v20, "url":Ljava/lang/String;
    # getter for: Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$000()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mokee/helper/utils/DownLoader;

    .line 192
    .local v8, "di":Lcom/mokee/helper/utils/DownLoader;
    const-wide/16 v18, 0x0

    .line 193
    .local v18, "time":J
    if-eqz v8, :cond_0

    .line 196
    :try_start_0
    iget-wide v0, v8, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_2

    .line 197
    iget-wide v0, v8, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    move-wide/from16 v22, v0

    iget-wide v0, v8, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    move-wide/from16 v24, v0

    sub-long v6, v22, v24

    .line 201
    .local v6, "allDownSize":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getStartDown()J

    move-result-wide v24

    sub-long v12, v22, v24

    .line 202
    .local v12, "endtDown":J
    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getFileSize()J

    move-result-wide v22

    iget-wide v0, v8, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    move-wide/from16 v24, v0

    sub-long v16, v22, v24

    .line 204
    .local v16, "surplusSize":J
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-lez v21, :cond_1

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_1

    .line 205
    div-long v14, v6, v12

    .line 206
    .local v14, "speed":J
    const-wide/16 v22, 0x0

    cmp-long v21, v14, v22

    if-lez v21, :cond_1

    .line 208
    div-long v18, v16, v14

    .line 211
    .end local v14    # "speed":J
    :cond_1
    iget-wide v0, v8, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getFileSize()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    iget-wide v0, v8, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x64

    mul-long v24, v24, v26

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getFileSize()J

    move-result-wide v26

    div-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-wide/from16 v3, v18

    # invokes: Lcom/mokee/helper/service/DownLoadService;->updateNotification(IIJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mokee/helper/service/DownLoadService;->access$100(Lcom/mokee/helper/service/DownLoadService;IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    .end local v6    # "allDownSize":J
    .end local v12    # "endtDown":J
    .end local v16    # "surplusSize":J
    :catch_0
    move-exception v10

    .line 216
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 199
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-wide v6, v8, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "allDownSize":J
    goto :goto_1

    .line 222
    .end local v6    # "allDownSize":J
    .end local v8    # "di":Lcom/mokee/helper/utils/DownLoader;
    .end local v18    # "time":J
    .end local v20    # "url":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/mokee/helper/utils/DownLoader;

    .line 223
    .restart local v8    # "di":Lcom/mokee/helper/utils/DownLoader;
    iget-object v0, v8, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 224
    .restart local v20    # "url":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    # getter for: Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/mokee/helper/service/DownLoadService;->access$200(Lcom/mokee/helper/service/DownLoadService;)Landroid/app/NotificationManager;

    move-result-object v21

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 226
    # getter for: Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$300()Landroid/util/SparseArray;

    move-result-object v21

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->remove(I)V

    .line 227
    # getter for: Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$000()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 230
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfoByUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v9

    .line 231
    .local v9, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    if-eqz v9, :cond_4

    .line 232
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v11, "intent":Landroid/content/Intent;
    const-string v21, "com.mokee.mkupdater.action.DOWNLOAD_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v21, "download_id"

    invoke-virtual {v9}, Lcom/mokee/helper/misc/DownLoadInfo;->getDownID()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    const-string v21, "download_flag"

    invoke-virtual {v9}, Lcom/mokee/helper/misc/DownLoadInfo;->getFlag()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/mokee/helper/service/DownLoadService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 238
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    .line 239
    # getter for: Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$000()Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v21

    if-nez v21, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mokee/helper/service/DownLoadService;->stopSelf()V

    goto/16 :goto_0

    .line 244
    .end local v8    # "di":Lcom/mokee/helper/utils/DownLoader;
    .end local v9    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v20    # "url":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/mokee/helper/utils/DownLoader;

    .line 245
    .restart local v8    # "di":Lcom/mokee/helper/utils/DownLoader;
    iget-object v0, v8, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 246
    .restart local v20    # "url":Ljava/lang/String;
    # getter for: Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$300()Landroid/util/SparseArray;

    move-result-object v21

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    # getter for: Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;
    invoke-static/range {v21 .. v21}, Lcom/mokee/helper/service/DownLoadService;->access$200(Lcom/mokee/helper/service/DownLoadService;)Landroid/app/NotificationManager;

    move-result-object v21

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/app/NotificationManager;->cancel(I)V

    .line 248
    # getter for: Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$300()Landroid/util/SparseArray;

    move-result-object v21

    invoke-virtual {v8}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/util/SparseArray;->remove(I)V

    .line 249
    # getter for: Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$000()Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_5
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 252
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfoByUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v9

    .line 253
    .restart local v9    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 254
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v21, "com.mokee.mkupdater.action.DOWNLOAD_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v21, "download_id"

    invoke-virtual {v9}, Lcom/mokee/helper/misc/DownLoadInfo;->getDownID()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 256
    const-string v21, "download_flag"

    invoke-virtual {v9}, Lcom/mokee/helper/misc/DownLoadInfo;->getFlag()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/mokee/helper/service/DownLoadService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 258
    const/4 v8, 0x0

    .line 259
    # getter for: Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;
    invoke-static {}, Lcom/mokee/helper/service/DownLoadService;->access$000()Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v21

    if-nez v21, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/service/DownLoadService$1;->this$0:Lcom/mokee/helper/service/DownLoadService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mokee/helper/service/DownLoadService;->stopSelf()V

    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
