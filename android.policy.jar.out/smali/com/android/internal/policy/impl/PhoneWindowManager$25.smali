.class Lcom/android/internal/policy/impl/PhoneWindowManager$25;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->startPowerMoService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 5803
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5806
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.powermo.SmartBar"

    const-string v2, "com.powermo.SmartBar.SmartBarService"

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->startService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 5807
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v1, "com.powermo.SmartBar"

    const-string v2, "com.powermo.SmartBar.SwipeUpService"

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->startService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 5808
    return-void
.end method
