.class Lcn/nubia/server/A2iService$2;
.super Landroid/os/UEventObserver;
.source "A2iService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/A2iService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/A2iService;


# direct methods
.method constructor <init>(Lcn/nubia/server/A2iService;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcn/nubia/server/A2iService$2;->this$0:Lcn/nubia/server/A2iService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcn/nubia/server/A2iService$2;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$500(Lcn/nubia/server/A2iService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/A2iService$2;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$600(Lcn/nubia/server/A2iService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 268
    const-string v0, "fff"

    const-string v2, "onUEvent 1"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcn/nubia/server/A2iService$2;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$700(Lcn/nubia/server/A2iService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 270
    const-string v0, "fff"

    const-string v2, "onUEvent 2"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcn/nubia/server/A2iService$2;->this$0:Lcn/nubia/server/A2iService;

    # invokes: Lcn/nubia/server/A2iService;->handleA2iEvent(Landroid/os/UEventObserver$UEvent;)V
    invoke-static {v0, p1}, Lcn/nubia/server/A2iService;->access$800(Lcn/nubia/server/A2iService;Landroid/os/UEventObserver$UEvent;)V

    .line 272
    const-string v0, "fff"

    const-string v2, "onUEvent 3"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcn/nubia/server/A2iService$2;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$700(Lcn/nubia/server/A2iService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 274
    const-string v0, "fff"

    const-string v2, "onUEvent 4"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
