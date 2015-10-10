.class Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;Lcom/flyme/deviceoriginalsettings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/SoundSettings$1;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;->sendEmptyMessage(I)Z

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 582
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 583
    :cond_0
    if-eqz p1, :cond_1

    .line 584
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 585
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$700(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 591
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$700(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
