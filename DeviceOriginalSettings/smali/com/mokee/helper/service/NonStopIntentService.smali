.class public abstract Lcom/mokee/helper/service/NonStopIntentService;
.super Landroid/app/Service;
.source "NonStopIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private volatile mServiceHandler:Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mokee/helper/service/NonStopIntentService;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mokee/helper/service/NonStopIntentService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/mokee/helper/service/NonStopIntentService;->mServiceLooper:Landroid/os/Looper;

    .line 57
    new-instance v1, Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;

    iget-object v2, p0, Lcom/mokee/helper/service/NonStopIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;-><init>(Lcom/mokee/helper/service/NonStopIntentService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mokee/helper/service/NonStopIntentService;->mServiceHandler:Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mokee/helper/service/NonStopIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 84
    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/mokee/helper/service/NonStopIntentService;->mServiceHandler:Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;

    invoke-virtual {v1}, Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 64
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lcom/mokee/helper/service/NonStopIntentService;->mServiceHandler:Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/mokee/helper/service/NonStopIntentService;->onStart(Landroid/content/Intent;I)V

    .line 78
    const/4 v0, 0x3

    goto :goto_0
.end method
