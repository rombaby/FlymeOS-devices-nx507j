.class Lcom/android/internal/policy/impl/NubiaGlobalActions$4;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;->setAllClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 376
    .local v0, "vibratorModeOn":I
    if-ne v0, v2, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/NubiaGlobalActions;->setRingerModeView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$300(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    .line 382
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mDialog:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$400(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;->dismiss()V

    .line 383
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$4;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$200(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
