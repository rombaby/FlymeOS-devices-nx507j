.class Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->confirmEnableOemUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    .line 1535
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAllOptions()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->access$000(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V

    .line 1536
    return-void
.end method
