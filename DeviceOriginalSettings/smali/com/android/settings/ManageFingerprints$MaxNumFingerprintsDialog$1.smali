.class Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog$1;
.super Ljava/lang/Object;
.source "ManageFingerprints.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;->dismiss()V

    .line 469
    return-void
.end method
