.class public Lcom/mokee/helper/db/DownLoadDao;
.super Ljava/lang/Object;
.source "DownLoadDao.java"


# static fields
.field private static downLoadDao:Lcom/mokee/helper/db/DownLoadDao;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/mokee/helper/db/DownLoadDao;->downLoadDao:Lcom/mokee/helper/db/DownLoadDao;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mokee/helper/db/DownLoadDao;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mokee/helper/db/DownLoadDao;
    .locals 3

    .prologue
    .line 41
    const-class v1, Lcom/mokee/helper/db/DownLoadDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mokee/helper/db/DownLoadDao;->downLoadDao:Lcom/mokee/helper/db/DownLoadDao;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/mokee/helper/db/DownLoadDao;

    invoke-static {}, Lcom/mokee/helper/MoKeeApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mokee/helper/db/DownLoadDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mokee/helper/db/DownLoadDao;->downLoadDao:Lcom/mokee/helper/db/DownLoadDao;

    .line 44
    :cond_0
    sget-object v0, Lcom/mokee/helper/db/DownLoadDao;->downLoadDao:Lcom/mokee/helper/db/DownLoadDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 259
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v2, "download_info"

    const-string v3, "url=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    if-eqz v0, :cond_0

    .line 266
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    if-eqz v0, :cond_0

    .line 266
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 265
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 266
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
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "sqliteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Lcom/mokee/helper/db/DBManager;

    iget-object v2, p0, Lcom/mokee/helper/db/DownLoadDao;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mokee/helper/db/DBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/mokee/helper/db/DBManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getDownLoadInfo(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;
    .locals 14
    .param p1, "downID"    # Ljava/lang/String;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 115
    .local v10, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 116
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 118
    .local v0, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :try_start_1
    const-string v13, "select url, flag, local_file, file_name, file_size, state from download_info where down_id=?"

    .line 119
    .local v13, "sql":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v10, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    move-object v11, v0

    .line 122
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .local v11, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Lcom/mokee/helper/misc/DownLoadInfo;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    const/4 v3, 0x5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/mokee/helper/misc/DownLoadInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    move-object v11, v0

    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_0

    .line 130
    :cond_0
    if-eqz v10, :cond_1

    .line 131
    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    :cond_1
    if-eqz v9, :cond_6

    .line 134
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v11

    .line 137
    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v13    # "sql":Ljava/lang/String;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 127
    :catch_0
    move-exception v12

    .line 128
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    if-eqz v10, :cond_3

    .line 131
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    :cond_3
    if-eqz v9, :cond_2

    .line 134
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 114
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 130
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v10, :cond_4

    .line 131
    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 133
    :cond_4
    if-eqz v9, :cond_5

    .line 134
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v13    # "sql":Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_3

    .line 127
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :catch_1
    move-exception v12

    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_2

    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_6
    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_1
.end method

.method public declared-synchronized getDownLoadInfoByName(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 147
    .local v10, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 148
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 150
    .local v0, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :try_start_1
    const-string v13, "select url, flag, down_id, local_file, file_name, file_size, state from download_info where file_name=?"

    .line 151
    .local v13, "sql":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v10, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    move-object v11, v0

    .line 154
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .local v11, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Lcom/mokee/helper/misc/DownLoadInfo;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x5

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/mokee/helper/misc/DownLoadInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    move-object v11, v0

    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_0

    .line 162
    :cond_0
    if-eqz v10, :cond_1

    .line 163
    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    :cond_1
    if-eqz v9, :cond_6

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v11

    .line 169
    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v13    # "sql":Ljava/lang/String;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 159
    :catch_0
    move-exception v12

    .line 160
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 162
    if-eqz v10, :cond_3

    .line 163
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    :cond_3
    if-eqz v9, :cond_2

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 146
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 162
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v10, :cond_4

    .line 163
    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 165
    :cond_4
    if-eqz v9, :cond_5

    .line 166
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v13    # "sql":Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_3

    .line 159
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :catch_1
    move-exception v12

    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_2

    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_6
    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_1
.end method

.method public declared-synchronized getDownLoadInfoByUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;
    .locals 14
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 180
    .local v10, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 181
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 183
    .local v0, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :try_start_1
    const-string v13, "select flag, down_id, local_file, file_name, file_size, state from download_info where url=?"

    .line 184
    .local v13, "sql":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v10, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    move-object v11, v0

    .line 187
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .local v11, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    new-instance v0, Lcom/mokee/helper/misc/DownLoadInfo;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v6, v1

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/mokee/helper/misc/DownLoadInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    move-object v11, v0

    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_0

    .line 195
    :cond_0
    if-eqz v10, :cond_1

    .line 196
    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 198
    :cond_1
    if-eqz v9, :cond_6

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v11

    .line 202
    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v13    # "sql":Ljava/lang/String;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 192
    :catch_0
    move-exception v12

    .line 193
    .local v12, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    if-eqz v10, :cond_3

    .line 196
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 198
    :cond_3
    if-eqz v9, :cond_2

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 179
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 195
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v10, :cond_4

    .line 196
    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 198
    :cond_4
    if-eqz v9, :cond_5

    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 195
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v13    # "sql":Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_3

    .line 192
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :catch_1
    move-exception v12

    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_2

    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_6
    move-object v0, v11

    .end local v11    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    goto :goto_1
.end method

.method public declared-synchronized isHasInfos(Ljava/lang/String;)Z
    .locals 9
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 61
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, -0x1

    .line 62
    .local v0, "count":I
    const/4 v1, 0x0

    .line 64
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v4, "select count(*)  from download_info where url=?"

    .line 65
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 69
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 74
    :cond_0
    if-eqz v2, :cond_1

    .line 75
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 77
    :cond_1
    if-eqz v1, :cond_2

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v4    # "sql":Ljava/lang/String;
    :cond_2
    :goto_0
    if-lez v0, :cond_6

    :goto_1
    monitor-exit p0

    return v5

    .line 71
    :catch_0
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    if-eqz v2, :cond_3

    .line 75
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 77
    :cond_3
    if-eqz v1, :cond_2

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 60
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 74
    .restart local v0    # "count":I
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_4

    .line 75
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 77
    :cond_4
    if-eqz v1, :cond_5

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    move v5, v6

    .line 81
    goto :goto_1
.end method

.method public declared-synchronized saveInfo(Lcom/mokee/helper/misc/DownLoadInfo;)V
    .locals 8
    .param p1, "dli"    # Lcom/mokee/helper/misc/DownLoadInfo;

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 92
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "insert into download_info( down_id, url, flag, local_file, file_name,file_size ) values (?,?,?,?,?,?)"

    .line 93
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mokee/helper/misc/DownLoadInfo;->getDownID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/mokee/helper/misc/DownLoadInfo;->getFlag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/mokee/helper/misc/DownLoadInfo;->getLocalFile()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Lcom/mokee/helper/misc/DownLoadInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/mokee/helper/misc/DownLoadInfo;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    .line 97
    .local v0, "bindArgs":[Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 90
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 101
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    .line 102
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized updataFileSize(Ljava/lang/String;J)V
    .locals 6
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "fileSize"    # J

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 237
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "update download_info set file_size=? where url=? "

    .line 238
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    .line 241
    .local v0, "bindArgs":[Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    if-eqz v1, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    if-eqz v1, :cond_0

    .line 246
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 235
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 245
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    .line 246
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized updataState(Ljava/lang/String;I)V
    .locals 6
    .param p1, "fileUrl"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mokee/helper/db/DownLoadDao;->getConnection()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 214
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string v3, "update download_info set state=? where url=? "

    .line 215
    .local v3, "sql":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object p1, v0, v4

    .line 218
    .local v0, "bindArgs":[Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    if-eqz v1, :cond_0

    .line 223
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v3    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    if-eqz v1, :cond_0

    .line 223
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 212
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 222
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_1

    .line 223
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
