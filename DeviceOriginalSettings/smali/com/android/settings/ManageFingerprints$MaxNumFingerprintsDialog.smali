.class public Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;
.super Landroid/app/DialogFragment;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxNumFingerprintsDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    const v2, 0x7f0a03fa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a03f9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0257

    new-instance v4, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog$1;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog$1;-><init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 474
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
