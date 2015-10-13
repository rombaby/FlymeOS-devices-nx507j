.class Lcom/android/internal/policy/impl/VolleyGestureCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "VolleyGestureCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/VolleyGestureCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VolleyGestureCtrl;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl$1;->this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl$1;->this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    # invokes: Lcom/android/internal/policy/impl/VolleyGestureCtrl;->enableVolleyGesture()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->access$000(Lcom/android/internal/policy/impl/VolleyGestureCtrl;)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl$1;->this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    # invokes: Lcom/android/internal/policy/impl/VolleyGestureCtrl;->disableVolleyGesture()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->access$100(Lcom/android/internal/policy/impl/VolleyGestureCtrl;)V

    goto :goto_0
.end method
