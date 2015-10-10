.class Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$2;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 460
    .local v0, "info":Lcom/flyme/deviceoriginalsettings/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    # invokes: Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;->access$100(Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 462
    return-void
.end method
