.class Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3$1;-><init>(Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 232
    :cond_0
    return-void
.end method
