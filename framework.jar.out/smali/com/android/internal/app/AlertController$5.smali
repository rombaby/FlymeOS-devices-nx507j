.class Lcom/android/internal/app/AlertController$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->createEnterAnimation()V
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
    .line 325
    iput-object p1, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/app/AlertController$5;->this$0:Lcom/android/internal/app/AlertController;

    # getter for: Lcom/android/internal/app/AlertController;->mBackAnimView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$1100(Lcom/android/internal/app/AlertController;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 329
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 330
    return-void
.end method
