.class Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;->updateList()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;->access$000(Lcom/flyme/deviceoriginalsettings/notification/ManagedServiceSettings;)V

    .line 83
    return-void
.end method
