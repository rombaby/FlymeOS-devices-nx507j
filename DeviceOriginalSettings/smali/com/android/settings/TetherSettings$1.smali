.class Lcom/flyme/deviceoriginalsettings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/TetherSettings;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$000(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$100(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/TetherSettings;->isBtPanAllowed()Z
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$200(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Z

    move-result v0

    .line 215
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$100(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$100(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 218
    .end local v0    # "enabled":Z
    :cond_0
    return-void

    .line 216
    .restart local v0    # "enabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$000(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$100(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TetherSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/TetherSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/TetherSettings;->access$100(Lcom/flyme/deviceoriginalsettings/TetherSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 224
    :cond_0
    return-void
.end method
