.class Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment$1;
.super Ljava/lang/Object;
.source "EnrollFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 617
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->dismiss()V

    .line 618
    return-void
.end method
