.class Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mConfirming:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mRetryPattern:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iput-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mRetryPattern:Z

    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    # invokes: Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->resetPatternState(Z)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->access$000(Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;Z)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->setResult(I)V

    .line 100
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->finish()V

    goto :goto_0
.end method
