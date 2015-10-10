.class Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;

    const/4 v1, 0x2

    # invokes: Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;->access$200(Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;I)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method
