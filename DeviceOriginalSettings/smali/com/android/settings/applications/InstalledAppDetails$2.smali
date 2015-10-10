.class Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails$2;
.super Landroid/os/storage/StorageEventListener;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails$2;->this$0:Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;

    # invokes: Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;->refreshButtons()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;->access$900(Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;)V

    .line 754
    return-void
.end method
