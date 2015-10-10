.class public Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;
.super Ljava/lang/Thread;
.source "DownLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/utils/DownLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DonwLoadThread"
.end annotation


# instance fields
.field private downSize:J

.field private endPos:J

.field private fileUrl:Ljava/lang/String;

.field private sectionSize:J

.field private startPos:J

.field final synthetic this$0:Lcom/mokee/helper/utils/DownLoader;

.field private threadId:I


# direct methods
.method public constructor <init>(Lcom/mokee/helper/utils/DownLoader;IJJJLjava/lang/String;)V
    .locals 3
    .param p2, "threadId"    # I
    .param p3, "startPos"    # J
    .param p5, "endPos"    # J
    .param p7, "downSize"    # J
    .param p9, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 224
    iput p2, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->threadId:I

    .line 225
    iput-wide p3, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->startPos:J

    .line 226
    iput-wide p5, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->endPos:J

    .line 227
    iput-wide p7, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    .line 228
    sub-long v0, p5, p3

    iput-wide v0, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->sectionSize:J

    .line 229
    iput-object p9, p0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->fileUrl:Ljava/lang/String;

    .line 230
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->sectionSize:J

    cmp-long v12, v12, v14

    if-gez v12, :cond_a

    .line 235
    const/4 v3, 0x0

    .line 236
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 237
    .local v9, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 238
    .local v7, "is":Ljava/io/InputStream;
    const/16 v12, 0x2000

    new-array v2, v12, [B

    .line 240
    .local v2, "buffer":[B
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->fileUrl:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 241
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 242
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 243
    const/16 v12, 0x1388

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 244
    const/16 v12, 0x1388

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 245
    const-string v12, "GET"

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 246
    const-string v12, "Connection"

    const-string v13, "Keep-Alive"

    invoke-virtual {v3, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v12, "Range"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->startPos:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->endPos:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 252
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    # getter for: Lcom/mokee/helper/utils/DownLoader;->localFile:Ljava/lang/String;
    invoke-static {v12}, Lcom/mokee/helper/utils/DownLoader;->access$000(Lcom/mokee/helper/utils/DownLoader;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "rw"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v9    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v10, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->startPos:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    add-long/2addr v12, v14

    invoke-virtual {v10, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 255
    const/4 v8, -0x1

    .line 256
    .local v8, "length":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 257
    .local v4, "currentTime":J
    :cond_0
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    .line 258
    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 259
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    int-to-long v14, v8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    .line 260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    iget-wide v14, v12, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    int-to-long v0, v8

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v12, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    add-long/2addr v14, v4

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 265
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->threadId:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->fileUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/mokee/helper/db/ThreadDownLoadDao;->updataInfo(IJLjava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->fileUrl:Ljava/lang/String;

    # invokes: Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V
    invoke-static {v12, v13, v14, v8}, Lcom/mokee/helper/utils/DownLoader;->access$100(Lcom/mokee/helper/utils/DownLoader;ILjava/lang/String;I)V

    .line 268
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    # getter for: Lcom/mokee/helper/utils/DownLoader;->state:I
    invoke-static {v12}, Lcom/mokee/helper/utils/DownLoader;->access$200(Lcom/mokee/helper/utils/DownLoader;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    # getter for: Lcom/mokee/helper/utils/DownLoader;->state:I
    invoke-static {v12}, Lcom/mokee/helper/utils/DownLoader;->access$200(Lcom/mokee/helper/utils/DownLoader;)I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    # getter for: Lcom/mokee/helper/utils/DownLoader;->state:I
    invoke-static {v12}, Lcom/mokee/helper/utils/DownLoader;->access$200(Lcom/mokee/helper/utils/DownLoader;)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_0

    .line 269
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->interrupt()V

    .line 273
    :cond_3
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->threadId:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->fileUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/mokee/helper/db/ThreadDownLoadDao;->updataInfo(IJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    :try_start_2
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 279
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 280
    if-eqz v3, :cond_4

    .line 281
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->sectionSize:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    invoke-virtual {v12}, Lcom/mokee/helper/utils/DownLoader;->isFinished()V

    move-object v9, v10

    .line 295
    .end local v2    # "buffer":[B
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "currentTime":J
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "length":I
    .end local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v11    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 283
    .restart local v2    # "buffer":[B
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "currentTime":J
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "length":I
    .restart local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 284
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->run()V

    move-object v9, v10

    .line 291
    .end local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 274
    .end local v4    # "currentTime":J
    .end local v8    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 275
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 279
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 280
    if-eqz v3, :cond_6

    .line 281
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 286
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->sectionSize:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    invoke-virtual {v12}, Lcom/mokee/helper/utils/DownLoader;->isFinished()V

    goto :goto_1

    .line 283
    :catch_2
    move-exception v6

    .line 284
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 289
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->run()V

    goto :goto_1

    .line 277
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 278
    :goto_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 279
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 280
    if-eqz v3, :cond_8

    .line 281
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 286
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->downSize:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->sectionSize:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_9

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    invoke-virtual {v13}, Lcom/mokee/helper/utils/DownLoader;->isFinished()V

    .line 289
    :goto_6
    throw v12

    .line 283
    :catch_3
    move-exception v6

    .line 284
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 289
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->run()V

    goto :goto_6

    .line 293
    .end local v2    # "buffer":[B
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v9    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->this$0:Lcom/mokee/helper/utils/DownLoader;

    invoke-virtual {v12}, Lcom/mokee/helper/utils/DownLoader;->isFinished()V

    goto :goto_1

    .line 277
    .restart local v2    # "buffer":[B
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 274
    .end local v9    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v6

    move-object v9, v10

    .end local v10    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
