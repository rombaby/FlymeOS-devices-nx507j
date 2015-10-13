.class Lcom/android/internal/policy/impl/NubiaGlobalActions$14;
.super Landroid/database/ContentObserver;
.source "NubiaGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NubiaGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NubiaGlobalActions;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaGlobalActions$14;->this$0:Lcom/android/internal/policy/impl/NubiaGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/NubiaGlobalActions;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/NubiaGlobalActions;->access$1600(Lcom/android/internal/policy/impl/NubiaGlobalActions;)V

    .line 1176
    return-void
.end method
