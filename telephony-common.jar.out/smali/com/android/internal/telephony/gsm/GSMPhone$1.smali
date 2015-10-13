.class Lcom/android/internal/telephony/gsm/GSMPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 177
    const-string v3, "org.codeaurora.intent.action.ACTION_SUBSCRIPTION_SET_UICC_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const-string v3, "subscription"

    const-wide/16 v6, -0x3e8

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 181
    .local v4, "subId":J
    const-string v3, "phone"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "phoneId":I
    const-string v3, "operationResult"

    const/4 v6, 0x1

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "status":I
    const-string v3, "newSubState"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, "state":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received ACTION_SUBSCRIPTION_SET_UICC_RESULT on subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "phoneId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 189
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 190
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone$1;->this$0:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->resetSubSpecifics()V

    .line 194
    .end local v0    # "phoneId":I
    .end local v1    # "state":I
    .end local v2    # "status":I
    .end local v4    # "subId":J
    :cond_0
    return-void
.end method
