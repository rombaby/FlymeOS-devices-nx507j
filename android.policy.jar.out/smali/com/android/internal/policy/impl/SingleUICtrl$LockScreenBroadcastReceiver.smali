.class Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SingleUICtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SingleUICtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockScreenBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SingleUICtrl;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SingleUICtrl;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SingleUICtrl;Lcom/android/internal/policy/impl/SingleUICtrl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/SingleUICtrl;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/SingleUICtrl$1;

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SingleUICtrl$LockScreenBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/SingleUICtrl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    const-string v0, "SingleUICtrl"

    const-string v1, "on Lock Screen to close singleUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    return-void
.end method
