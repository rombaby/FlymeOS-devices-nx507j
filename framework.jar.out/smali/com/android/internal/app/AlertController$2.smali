.class Lcom/android/internal/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->createNubiaAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;I)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    iput p2, p0, Lcom/android/internal/app/AlertController$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/android/internal/app/AlertController$2;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    # invokes: Lcom/android/internal/app/AlertController;->createEnterAnimation()V
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$800(Lcom/android/internal/app/AlertController;)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    # invokes: Lcom/android/internal/app/AlertController;->createExitAnimation()V
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->access$900(Lcom/android/internal/app/AlertController;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
