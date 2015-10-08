.class Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpamFilterObserver"
.end annotation


# instance fields
.field private mFetchAllFilters:Ljava/lang/Runnable;

.field private mTask:Ljava/util/concurrent/Future;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 872
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 888
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$1;-><init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mFetchAllFilters:Ljava/lang/Runnable;

    .line 873
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->addToCache(Landroid/database/Cursor;)V

    return-void
.end method

.method private addToCache(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 876
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 878
    .local v2, "notifId":I
    const-string v4, "package_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 880
    .local v3, "pkgName":Ljava/lang/String;
    const-string v4, "normalized_text"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "normalizedText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->getSpamCacheHash(Ljava/lang/CharSequence;Ljava/lang/String;)I
    invoke-static {v4, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v0

    .line 883
    .local v0, "hash":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v5

    monitor-enter v5

    .line 884
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamCache:Landroid/util/SparseIntArray;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 885
    monitor-exit v5

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public observe()V
    .locals 4

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 953
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/util/cm/SpamFilter;->NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 955
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->update(Landroid/net/Uri;)V

    .line 956
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 910
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->update(Landroid/net/Uri;)V

    .line 911
    return-void
.end method

.method update(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 917
    :cond_0
    if-nez p1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mFetchAllFilters:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    .line 949
    :goto_0
    return-void

    .line 920
    :cond_1
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver$2;-><init>(Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;Landroid/net/Uri;)V

    .line 947
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSpamExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SpamFilterObserver;->mTask:Ljava/util/concurrent/Future;

    goto :goto_0
.end method
