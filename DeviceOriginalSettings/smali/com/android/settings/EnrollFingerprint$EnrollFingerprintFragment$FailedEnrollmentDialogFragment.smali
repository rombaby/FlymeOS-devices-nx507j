.class public Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;
.super Landroid/app/DialogFragment;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedEnrollmentDialogFragment"
.end annotation


# instance fields
.field private mFragment:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 606
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 607
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->mFragment:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .line 608
    return-void
.end method

.method static newInstance(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;
    .locals 1
    .param p0, "fragment"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 601
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;-><init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 612
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a040c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a040e

    new-instance v3, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a040d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 622
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 628
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->mFragment:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->mFragment:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 631
    :cond_0
    return-void
.end method
