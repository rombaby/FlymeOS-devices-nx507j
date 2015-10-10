.class Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;Lcom/flyme/deviceoriginalsettings/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/ApnSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/ApnSettings$1;

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 478
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 496
    :goto_0
    return-void

    .line 480
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 481
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 482
    # setter for: Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->access$102(Z)Z

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->access$200(Lcom/flyme/deviceoriginalsettings/ApnSettings;)V

    .line 486
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 487
    # setter for: Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnMode:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->access$102(Z)Z

    .line 488
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->removeDialog(I)V

    .line 489
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0886

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
