.class Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x2

    .line 287
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V

    .line 289
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 290
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;)V

    .line 291
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/MapProfile;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 293
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V
    invoke-static {v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;Landroid/preference/CheckBoxPreference;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/bluetooth/PbapServerProfile;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$device:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 298
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings$1;->val$profile:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V
    invoke-static {v1, v0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/DeviceProfilesSettings;Landroid/preference/CheckBoxPreference;Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothProfile;)V

    .line 302
    :cond_1
    return-void
.end method
