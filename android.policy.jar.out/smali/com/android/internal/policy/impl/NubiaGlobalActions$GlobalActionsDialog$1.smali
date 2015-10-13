.class Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog$1;
.super Ljava/lang/Object;
.source "NubiaGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;)V
    .locals 0

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog$1;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1275
    return-void
.end method
