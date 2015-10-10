.class final Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "NonStopIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/service/NonStopIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/service/NonStopIntentService;


# direct methods
.method public constructor <init>(Lcom/mokee/helper/service/NonStopIntentService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;->this$0:Lcom/mokee/helper/service/NonStopIntentService;

    .line 41
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/mokee/helper/service/NonStopIntentService$ServiceHandler;->this$0:Lcom/mokee/helper/service/NonStopIntentService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/mokee/helper/service/NonStopIntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
