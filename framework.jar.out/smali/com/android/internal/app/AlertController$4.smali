.class Lcom/android/internal/app/AlertController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->createExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/internal/app/AlertController$4;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/app/AlertController$4;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    return-void
.end method
