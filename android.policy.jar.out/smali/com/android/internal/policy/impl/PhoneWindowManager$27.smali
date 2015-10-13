.class Lcom/android/internal/policy/impl/PhoneWindowManager$27;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->showAppOptimizeMessage(Ljava/lang/CharSequence;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$always:Z

.field final synthetic val$cur:I

.field final synthetic val$msg:Ljava/lang/CharSequence;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .prologue
    .line 5914
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$msg:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$cur:I

    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$total:I

    iput-boolean p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$always:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5917
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppOptimizeMessageDialog:Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$msg:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$cur:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$total:I

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->val$always:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->createAppOptDialog(Ljava/lang/CharSequence;IIZ)V

    .line 5918
    return-void
.end method
