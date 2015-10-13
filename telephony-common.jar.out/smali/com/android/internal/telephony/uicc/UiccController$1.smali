.class Lcom/android/internal/telephony/uicc/UiccController$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 624
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBootComplete Received startActivityWhenBoot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v3, v3, Lcom/android/internal/telephony/uicc/UiccController;->startActivityWhenBoot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V

    .line 626
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/uicc/UiccController;->isBootCompleted:Z

    .line 627
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/UiccController;->startActivityWhenBoot:Z

    if-eqz v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # invokes: Lcom/android/internal/telephony/uicc/UiccController;->getContactsIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Intent;

    move-result-object v0

    .line 629
    .local v0, "contactsIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    # getter for: Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->access$200(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController$1;->this$0:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/uicc/UiccController;->startActivityWhenBoot:Z

    .line 635
    .end local v0    # "contactsIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
