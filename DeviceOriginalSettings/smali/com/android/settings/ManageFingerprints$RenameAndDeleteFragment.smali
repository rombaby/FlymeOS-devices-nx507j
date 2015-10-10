.class public Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;
.super Landroid/app/DialogFragment;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameAndDeleteFragment"
.end annotation


# instance fields
.field private mFingerNameEditText:Landroid/widget/EditText;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static newInstance(Landroid/hardware/fingerprint/Fingerprint;Z)Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;
    .locals 3
    .param p0, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "canDelete"    # Z

    .prologue
    .line 409
    new-instance v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;

    invoke-direct {v1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;-><init>()V

    .line 410
    .local v1, "fragment":Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 412
    const-string v2, "canDelete"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 414
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "fingerprint"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 420
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "canDelete"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 422
    .local v1, "canDelete":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 423
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04006a

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 424
    .local v2, "dialogView":Landroid/view/View;
    const v4, 0x7f11002c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;

    .line 425
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->mFingerNameEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a03f7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0257

    new-instance v6, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment$1;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    if-eqz v1, :cond_0

    .line 439
    const v4, 0x7f0a01b0

    new-instance v5, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment$2;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
