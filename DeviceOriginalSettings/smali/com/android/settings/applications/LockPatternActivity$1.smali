.class Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 69
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 72
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0910

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a090b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a05b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0918

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
