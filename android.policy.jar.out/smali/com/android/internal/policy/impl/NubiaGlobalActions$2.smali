.class Lcom/android/internal/policy/impl/NubiaGlobalActions$2;
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
    .line 316
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$2;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/NubiaGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$000(Lcom/android/internal/policy/impl/NubiaGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(Ljava/lang/String;Z)V

    .line 334
    return-void
.end method
