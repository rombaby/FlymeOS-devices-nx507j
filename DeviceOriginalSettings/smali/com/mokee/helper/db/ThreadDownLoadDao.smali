.class public Lcom/mokee/helper/db/ThreadDownLoadDao;
.super Ljava/lang/Object;
.source "ThreadDownLoadDao.java"


# static fields
.field private static threadDownLoadDao:Lcom/mokee/helper/db/ThreadDownLoadDao;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/mokee/helper/db/ThreadDownLoadDao;->threadDownLoadDao:Lcom/mokee/helper/db/ThreadDownLoadDao;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mokee/helper/db/ThreadDownLoadDao;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/mokee/helper/db/ThreadDownLoadDao;->threadDownLoadDao:Lcom/mokee/helper/db/ThreadDownLoadDao;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mokee/helper/db/ThreadDownLoadDao;

    invoke-static {}, Lcom/mokee/helper/MoKeeApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mokee/helper/db/ThreadDownLoadDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mokee/helper/db/ThreadDownLoadDao;->threadDownLoadDao:Lcom/mokee/helper/db/ThreadDownLoadDao;

    .line 47
    :cond_0
    sget-object v0, Lcom/mokee/helper/db/ThreadDownLoadDao;->threadDownLoadDao:Lcom/mokee/helper/db/ThreadDownLoadDao;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 175
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "thread_info"

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    if-eqz v0, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    if-eqz v0, :cond_0

    .line 182
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 181
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 182
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getConnection()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Lcom/mokee/helper/db/DBManager;

    iget-object v2, p0, Lcom/mokee/helper/db/ThreadDownLoadDao;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mokee/helper/db/DBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/mokee/helper/db/DBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getThreadInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "fileUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/helper/misc/ThreadDownLoadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/helper/misc/ThreadDownLoadInfo;>;"
    invoke-virtual {p0}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 119
    .local v10, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 121
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v13, "select thread_id, start_pos, end_pos, down_size, url from thread_info where url=?"

    .line 122
    .local v13, "sql":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v10, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 125
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    new-instance v0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x4

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;-><init>(IJJJLjava/lang/String;)V

    .line 128
    .local v0, "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 130
    .end local v0    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    .end local v13    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    if-eqz v10, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 136
    :cond_0
    if-eqz v9, :cond_1

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v12

    .line 133
    .restart local v13    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 134
    :try_start_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 136
    :cond_3
    if-eqz v9, :cond_1

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 117
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/helper/misc/ThreadDownLoadInfo;>;"
    .end local v13    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 133
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/helper/misc/ThreadDownLoadInfo;>;"
    :catchall_1
    move-exception v1

    if-eqz v10, :cond_4

    .line 134
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 136
    :cond_4
    if-eqz v9, :cond_5

    .line 137
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized isHasInfos(Ljava/lang/String;)Z
    .locals 9
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 63
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 64
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, -0x1

    .line 65
    .local v0, "count":I
    const/4 v1, 0x0

    .line 67
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v4, "select count(*)  from thread_info where url=?"

    .line 68
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 72
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 77
    :cond_0
    if-eqz v2, :cond_1

    .line 78
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    :cond_1
    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_0
    if-lez v0, :cond_6

    :goto_1
    monitor-exit p0

    return v5

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    if-eqz v2, :cond_3

    .line 78
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    :cond_3
    if-eqz v1, :cond_2

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 63
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 77
    .restart local v0    # "count":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_4

    .line 78
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    :cond_4
    if-eqz v1, :cond_5

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move v5, v6

    .line 84
    goto :goto_1
.end method

.method public declared-synchronized saveInfos(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mokee/helper/misc/ThreadDownLoadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/helper/misc/ThreadDownLoadInfo;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 93
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    .line 94
    .local v4, "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    const-string v5, "insert into thread_info(thread_id,start_pos, end_pos,down_size,url) values (?,?,?,?,?)"

    .line 95
    .local v5, "sql":Ljava/lang/String;
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getThreadId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getStartPos()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x2

    invoke-virtual {v4}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getEndPos()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    invoke-virtual {v4}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getDownSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x4

    invoke-virtual {v4}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 99
    .local v0, "bindArgs":[Ljava/lang/Object;
    invoke-virtual {v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 101
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    .end local v5    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    if-eqz v1, :cond_0

    .line 105
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 104
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_0

    .line 105
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 91
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 104
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v6

    if-eqz v1, :cond_2

    .line 105
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized updataInfo(IJLjava/lang/String;)V
    .locals 6
    .param p1, "threadId"    # I
    .param p2, "downSize"    # J
    .param p4, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 153
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "update thread_info set down_size=? where thread_id=? and url=?"

    .line 154
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    aput-object p4, v0, v4

    .line 157
    .local v0, "bindArgs":[Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    if-eqz v1, :cond_0

    .line 162
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    if-eqz v1, :cond_0

    .line 162
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 151
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 161
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    .line 162
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
