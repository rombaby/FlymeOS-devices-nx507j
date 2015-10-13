.class Lcom/android/internal/policy/impl/SingleUICtrl$1;
.super Landroid/database/ContentObserver;
.source "SingleUICtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SingleUICtrl;->registerExternalControllerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SingleUICtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SingleUICtrl;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$1;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 128
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$1;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    # getter for: Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SingleUICtrl;->access$200(Lcom/android/internal/policy/impl/SingleUICtrl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode_external"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "mode":I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$1;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    # invokes: Lcom/android/internal/policy/impl/SingleUICtrl;->longPressedKey(I)V
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/SingleUICtrl;->access$300(Lcom/android/internal/policy/impl/SingleUICtrl;I)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$1;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    const/4 v2, 0x2

    # invokes: Lcom/android/internal/policy/impl/SingleUICtrl;->longPressedKey(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SingleUICtrl;->access$300(Lcom/android/internal/policy/impl/SingleUICtrl;I)V

    goto :goto_0
.end method
