.class Lcom/android/internal/telephony/uicc/AdnRecordCache$1;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILjava/lang/String;Landroid/os/Message;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/AdnRecordCache;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 718
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 721
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 722
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 724
    .local v1, "efid":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    # getter for: Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaitersLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->access$000(Lcom/android/internal/telephony/uicc/AdnRecordCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 728
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 729
    .local v2, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 731
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v5, v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 734
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    # invokes: Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    invoke-static {v3, v2, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->access$100(Lcom/android/internal/telephony/uicc/AdnRecordCache;Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 735
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    const/16 v5, 0x6f3a

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 736
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache$1;->this$0:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    const/16 v6, 0x6f3a

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->setAdnCount(I)V

    .line 739
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 718
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
