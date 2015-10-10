.class Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;
.super Ljava/lang/Object;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;Landroid/widget/EditText;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 237
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->val$resolver:Landroid/content/ContentResolver;

    const-string v3, "custom_carrier_label"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->updateCustomLabelTextSummary()V
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->access$000(Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;)V

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.intent.action.CUSTOM_CARRIER_LABEL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
