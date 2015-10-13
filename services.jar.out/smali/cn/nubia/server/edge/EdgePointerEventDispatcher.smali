.class public Lcn/nubia/server/edge/EdgePointerEventDispatcher;
.super Landroid/view/InputEventReceiver;
.source "EdgePointerEventDispatcher.java"


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isScreenSaverShow:Z

.field private mContext:Landroid/content/Context;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/os/edge/IEdgePointerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 46
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 37
    const-string v1, "EdgePointerEventDispatcher"

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->TAG:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    .line 41
    const/4 v1, 0x0

    new-array v1, v1, [Lnubia/os/edge/IEdgePointerEventListener;

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    .line 112
    new-instance v1, Lcn/nubia/server/edge/EdgePointerEventDispatcher$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/edge/EdgePointerEventDispatcher$1;-><init>(Lcn/nubia/server/edge/EdgePointerEventDispatcher;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object p1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/server/edge/EdgePointerEventDispatcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/edge/EdgePointerEventDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->isScreenSaverShow:Z

    return p1
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v7, 0x0

    .line 57
    :try_start_0
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 59
    iget-boolean v4, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->isScreenSaverShow:Z

    if-nez v4, :cond_1

    .line 60
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    .line 62
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    iget-object v5, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    iget-object v4, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    if-nez v4, :cond_0

    .line 64
    iget-object v4, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lnubia/os/edge/IEdgePointerEventListener;

    iput-object v4, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    .line 65
    iget-object v4, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    iget-object v6, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    .line 68
    .local v2, "listeners":[Lnubia/os/edge/IEdgePointerEventListener;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    array-length v4, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v1, v4, :cond_1

    .line 71
    :try_start_3
    aget-object v4, v2, v1

    invoke-interface {v4, v3}, Lnubia/os/edge/IEdgePointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    .end local v2    # "listeners":[Lnubia/os/edge/IEdgePointerEventListener;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v4

    invoke-virtual {p0, p1, v7}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v4

    :cond_1
    invoke-virtual {p0, p1, v7}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 80
    return-void

    .line 72
    .restart local v1    # "i":I
    .restart local v2    # "listeners":[Lnubia/os/edge/IEdgePointerEventListener;
    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public registerEdgeInputEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 87
    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventListener: trying to register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " twice."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    .line 94
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method

.method public unregisterEdgeInputEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 102
    iget-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->mListenersArray:[Lnubia/os/edge/IEdgePointerEventListener;

    .line 109
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    return-void
.end method
