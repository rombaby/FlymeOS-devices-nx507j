.class public final Lnubia/os/edge/EdgeTouchEventManager;
.super Ljava/lang/Object;
.source "EdgeTouchEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/EdgeTouchEventManager$1;,
        Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EdgePointerEventManager"

.field private static sInstance:Lnubia/os/edge/EdgeTouchEventManager;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnubia/os/edge/EdgeTouchEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

.field private mService:Lnubia/os/edge/IEdgePointerEventManager;

.field private mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lnubia/os/edge/EdgeTouchEventManager;

    invoke-direct {v0}, Lnubia/os/edge/EdgeTouchEventManager;-><init>()V

    sput-object v0, Lnubia/os/edge/EdgeTouchEventManager;->sInstance:Lnubia/os/edge/EdgeTouchEventManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lnubia/os/edge/EdgeTouchEventListener;

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 43
    :try_start_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getWrapper()Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lnubia/os/edge/EdgeTouchEventManager;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lnubia/os/edge/EdgeTouchEventManager;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchEventManager;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 92
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v3, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 97
    :try_start_0
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    if-nez v2, :cond_2

    .line 98
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lnubia/os/edge/EdgeTouchEventListener;

    iput-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 99
    iget-object v2, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    :cond_2
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 102
    .local v1, "listeners":[Lnubia/os/edge/EdgeTouchEventListener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 104
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lnubia/os/edge/EdgeTouchEventListener;->onEdgeTouchEvent(Landroid/view/MotionEvent;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    .end local v1    # "listeners":[Lnubia/os/edge/EdgeTouchEventListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getInstance()Lnubia/os/edge/EdgeTouchEventManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lnubia/os/edge/EdgeTouchEventManager;->sInstance:Lnubia/os/edge/EdgeTouchEventManager;

    return-object v0
.end method

.method private getService()Lnubia/os/edge/IEdgePointerEventManager;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "nubia.edge.touch"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    .line 113
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mService:Lnubia/os/edge/IEdgePointerEventManager;

    return-object v0
.end method

.method private getWrapper()Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchEventManager;Lnubia/os/edge/EdgeTouchEventManager$1;)V

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    .line 120
    :cond_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mWrapper:Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getService()Lnubia/os/edge/IEdgePointerEventManager;

    move-result-object v0

    invoke-direct {p0}, Lnubia/os/edge/EdgeTouchEventManager;->getWrapper()Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/os/edge/IEdgePointerEventManager;->unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerEdgeTouchEventListener(Lnubia/os/edge/EdgeTouchEventListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/edge/EdgeTouchEventListener;

    .prologue
    .line 64
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
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

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 74
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterEdgeTouchEventListener(Lnubia/os/edge/EdgeTouchEventListener;)V
    .locals 4
    .param p1, "listener"    # Lnubia/os/edge/EdgeTouchEventListener;

    .prologue
    .line 78
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
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

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager;->mListenersArray:[Lnubia/os/edge/EdgeTouchEventListener;

    .line 88
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
