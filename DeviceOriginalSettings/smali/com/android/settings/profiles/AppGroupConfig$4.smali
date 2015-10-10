.class Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$4;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$4;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$4;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    # getter for: Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->mProfileManager:Lmokee/app/ProfileManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->access$300(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;)Lmokee/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$4;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    # getter for: Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->access$000(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;)Landroid/app/NotificationGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmokee/app/ProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V

    .line 296
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$4;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    const/4 v1, 0x0

    # setter for: Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->mNotificationGroup:Landroid/app/NotificationGroup;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->access$002(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;Landroid/app/NotificationGroup;)Landroid/app/NotificationGroup;

    .line 297
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$4;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->finish()V

    .line 298
    return-void
.end method
