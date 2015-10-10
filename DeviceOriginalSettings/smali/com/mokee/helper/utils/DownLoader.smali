.class public Lcom/mokee/helper/utils/DownLoader;
.super Ljava/lang/Object;
.source "DownLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;
    }
.end annotation


# instance fields
.field public allDownSize:J

.field private downInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mokee/helper/misc/ThreadDownLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public downloadedSize:J

.field private endThreadNum:I

.field private fileSize:J

.field public fileUrl:Ljava/lang/String;

.field private localFile:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private notificationID:I

.field private startDown:J

.field private state:I

.field private threadCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V
    .locals 4
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "localfile"    # Ljava/lang/String;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "startDown"    # J
    .param p6, "mContext"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    .line 55
    iput v0, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/mokee/helper/utils/DownLoader;->notificationID:I

    .line 57
    iput-wide v2, p0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    .line 58
    iput-wide v2, p0, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/mokee/helper/utils/DownLoader;->endThreadNum:I

    .line 64
    iput-object p1, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/mokee/helper/utils/DownLoader;->localFile:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/mokee/helper/utils/DownLoader;->mHandler:Landroid/os/Handler;

    .line 68
    iput-wide p4, p0, Lcom/mokee/helper/utils/DownLoader;->startDown:J

    .line 69
    iput-object p6, p0, Lcom/mokee/helper/utils/DownLoader;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/utils/DownLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/utils/DownLoader;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mokee/helper/utils/DownLoader;->localFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mokee/helper/utils/DownLoader;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/utils/DownLoader;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mokee/helper/utils/DownLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/utils/DownLoader;

    .prologue
    .line 39
    iget v0, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    return v0
.end method

.method private init()Z
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x5

    const/4 v6, 0x0

    .line 152
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v7, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 154
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    .line 157
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 158
    iget-wide v8, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 159
    iget-wide v8, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    const-wide/32 v10, 0x100000

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 160
    const/4 v7, 0x1

    iput v7, p0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    .line 164
    :goto_0
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v7

    iget-object v8, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    iget-wide v10, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    invoke-virtual {v7, v8, v10, v11}, Lcom/mokee/helper/db/DownLoadDao;->updataFileSize(Ljava/lang/String;J)V

    .line 165
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/mokee/helper/utils/DownLoader;->localFile:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 169
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v7, "rwd"

    invoke-direct {v0, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v0, "accessFile":Ljava/io/RandomAccessFile;
    iget-wide v8, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 171
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 182
    .end local v0    # "accessFile":Ljava/io/RandomAccessFile;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return v5

    .line 162
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    const/4 v7, 0x5

    iput v7, p0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    iput v12, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    .line 181
    iget v5, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    iget-object v7, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-direct {p0, v5, v7, v6}, Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V

    move v5, v6

    .line 182
    goto :goto_1

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_2
    const/4 v5, 0x5

    :try_start_1
    iput v5, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    .line 175
    iget v5, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    iget-object v7, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v6

    .line 176
    goto :goto_1
.end method

.method private isFirst(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mokee/helper/db/ThreadDownLoadDao;->isHasInfos(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/mokee/helper/utils/DownLoader;->localFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0, p1}, Lcom/mokee/helper/utils/DownLoader;->delete(Ljava/lang/String;)V

    .line 194
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 190
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 194
    goto :goto_2
.end method

.method private declared-synchronized sendMsg(ILjava/lang/String;I)V
    .locals 2
    .param p1, "msgID"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 324
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    :goto_0
    iput p1, v0, Landroid/os/Message;->what:I

    .line 330
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 331
    invoke-virtual {p0}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 332
    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 327
    :cond_0
    :try_start_1
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mokee/helper/db/ThreadDownLoadDao;->delete(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public getDownLoadInfo()Lcom/mokee/helper/misc/DownLoadInfo;
    .locals 18

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mokee/helper/utils/DownLoader;->isFirst(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/mokee/helper/utils/DownLoader;->init()Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    const/4 v5, 0x0

    .line 143
    :goto_0
    return-object v5

    .line 103
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    int-to-long v8, v4

    div-long v16, v6, v8

    .line 104
    .local v16, "range":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    .line 105
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 106
    new-instance v2, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    int-to-long v6, v3

    mul-long v4, v6, v16

    add-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    mul-long v6, v6, v16

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-direct/range {v2 .. v10}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;-><init>(IJJJLjava/lang/String;)V

    .line 108
    .local v2, "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v2    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    :cond_1
    new-instance v2, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v6, v4

    mul-long v6, v6, v16

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;-><init>(IJJJLjava/lang/String;)V

    .line 112
    .restart local v2    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-virtual {v4, v6}, Lcom/mokee/helper/db/ThreadDownLoadDao;->saveInfos(Ljava/util/List;)V

    .line 114
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    .line 115
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    .line 116
    new-instance v5, Lcom/mokee/helper/misc/DownLoadInfo;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lcom/mokee/helper/misc/DownLoadInfo;-><init>(JJLjava/lang/String;)V

    .line 117
    .local v5, "loadInfo":Lcom/mokee/helper/misc/DownLoadInfo;
    goto/16 :goto_0

    .line 120
    .end local v2    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    .end local v3    # "i":I
    .end local v5    # "loadInfo":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v16    # "range":J
    :cond_2
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getThreadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    .line 122
    const-string v4, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not isFirst size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v13, 0x0

    .line 125
    .local v13, "complete":I
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfoByUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mokee/helper/misc/DownLoadInfo;->getFileSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    .line 126
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    .line 127
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    .line 129
    .restart local v2    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    int-to-long v6, v13

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getDownSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v13, v6

    .line 130
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getDownSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    .line 131
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getDownSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    goto :goto_2

    .line 134
    .end local v2    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_4

    .line 135
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V

    .line 136
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 138
    :cond_4
    new-instance v7, Lcom/mokee/helper/misc/DownLoadInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    int-to-long v10, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-direct/range {v7 .. v12}, Lcom/mokee/helper/misc/DownLoadInfo;-><init>(JJLjava/lang/String;)V

    move-object v5, v7

    goto/16 :goto_0

    .line 141
    .end local v13    # "complete":I
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/mokee/helper/utils/DownLoader;->state:I

    .line 142
    move-object/from16 v0, p0

    iget v4, v0, Lcom/mokee/helper/utils/DownLoader;->state:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V

    .line 143
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    return-wide v0
.end method

.method public getNotificationID()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/mokee/helper/utils/DownLoader;->notificationID:I

    return v0
.end method

.method public getStartDown()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/mokee/helper/utils/DownLoader;->startDown:J

    return-wide v0
.end method

.method public isDownLoading()Z
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isFinished()V
    .locals 3

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mokee/helper/utils/DownLoader;->endThreadNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mokee/helper/utils/DownLoader;->endThreadNum:I

    .line 340
    iget v0, p0, Lcom/mokee/helper/utils/DownLoader;->endThreadNum:I

    iget v1, p0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    if-ne v0, v1, :cond_0

    .line 341
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mokee/helper/utils/DownLoader;->sendMsg(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_0
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 305
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 306
    iput v2, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    .line 307
    return-void
.end method

.method public setNotificationID(I)V
    .locals 0
    .param p1, "notificationID"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/mokee/helper/utils/DownLoader;->notificationID:I

    .line 82
    return-void
.end method

.method public start()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    .line 201
    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 202
    iget v1, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    if-ne v1, v2, :cond_1

    .line 210
    :cond_0
    return-void

    .line 204
    :cond_1
    iput v2, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    .line 205
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v1

    iget-object v2, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    iget v3, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    invoke-virtual {v1, v2, v3}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 206
    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    .line 207
    .local v11, "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    new-instance v1, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;

    invoke-virtual {v11}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getThreadId()I

    move-result v3

    invoke-virtual {v11}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getStartPos()J

    move-result-wide v4

    invoke-virtual {v11}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getEndPos()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getDownSize()J

    move-result-wide v8

    invoke-virtual {v11}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;-><init>(Lcom/mokee/helper/utils/DownLoader;IJJJLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/mokee/helper/utils/DownLoader$DonwLoadThread;->start()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownLoader [fileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->localFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/utils/DownLoader;->threadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/utils/DownLoader;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/utils/DownLoader;->downInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/utils/DownLoader;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/utils/DownLoader;->notificationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allDownSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/utils/DownLoader;->allDownSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/utils/DownLoader;->downloadedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endThreadNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/utils/DownLoader;->endThreadNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startDown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/utils/DownLoader;->startDown:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
