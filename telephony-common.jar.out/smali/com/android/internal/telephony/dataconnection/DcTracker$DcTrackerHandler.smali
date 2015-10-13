.class Lcom/android/internal/telephony/dataconnection/DcTracker$DcTrackerHandler;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcTrackerHandler"
.end annotation


# instance fields
.field private final mDct:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DcTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DcTrackerHandler;->mDct:Ljava/lang/ref/WeakReference;

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DcTrackerHandler;->mDct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 217
    .local v0, "dct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v1, v1, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    if-eqz v1, :cond_2

    .line 218
    :cond_0
    if-eqz v0, :cond_1

    .line 219
    const-string v1, "Sim handler handleMessage: Ignore msgs since phone is inactive"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    const-string v1, "EVENT_3GPP_RECORDS_LOADED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 227
    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimRecordsLoaded()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$000(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
