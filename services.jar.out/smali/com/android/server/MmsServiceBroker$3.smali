.class Lcom/android/server/MmsServiceBroker$3;
.super Landroid/content/BroadcastReceiver;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MmsServiceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/MmsServiceBroker;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    # getter for: Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$400(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker$3;->this$0:Lcom/android/server/MmsServiceBroker;

    # invokes: Lcom/android/server/MmsServiceBroker;->tryConnecting()V
    invoke-static {v1}, Lcom/android/server/MmsServiceBroker;->access$000(Lcom/android/server/MmsServiceBroker;)V

    .line 416
    :cond_0
    return-void
.end method
