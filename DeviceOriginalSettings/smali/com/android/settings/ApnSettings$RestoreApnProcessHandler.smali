.class Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "restoreApnUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    .line 503
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 504
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 505
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 509
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 511
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 512
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->access$500()Landroid/net/Uri;

    move-result-object v2

    # invokes: Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->access$600(Lcom/flyme/deviceoriginalsettings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
