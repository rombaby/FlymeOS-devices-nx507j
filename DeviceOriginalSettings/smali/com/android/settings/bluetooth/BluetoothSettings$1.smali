.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mActivity:Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateOptionsMenu()V

    .line 110
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 113
    return-void
.end method
