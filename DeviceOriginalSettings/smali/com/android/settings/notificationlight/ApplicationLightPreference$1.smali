.class Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

.field final synthetic val$d:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->getColor()I

    move-result v1

    const/high16 v2, -0x1000000

    sub-int/2addr v1, v2

    # setter for: Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->mColorValue:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->access$002(Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;I)I

    .line 179
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOn()I

    move-result v1

    # setter for: Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->mOnValue:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->access$102(Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;I)I

    .line 180
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->val$d:Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/LightSettingsDialog;->getPulseSpeedOff()I

    move-result v1

    # setter for: Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->mOffValue:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->access$202(Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;I)I

    .line 181
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->access$300(Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;)V

    .line 182
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;

    # invokes: Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, p0}, Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;->access$400(Lcom/flyme/deviceoriginalsettings/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z

    .line 183
    return-void
.end method
