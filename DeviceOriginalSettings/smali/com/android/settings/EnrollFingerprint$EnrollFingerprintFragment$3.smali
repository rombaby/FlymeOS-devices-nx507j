.class Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;
.super Landroid/service/fingerprint/FingerprintManagerReceiver;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManagerReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollResult(II)V
    .locals 2
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I

    .prologue
    .line 540
    invoke-super {p0, p1, p2}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onEnrollResult(II)V

    .line 543
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    add-int/lit8 v1, p2, 0x1

    # setter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$202(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;I)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v1

    sub-int/2addr v1, p2

    # setter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$302(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;I)I

    .line 547
    if-nez p2, :cond_1

    .line 548
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v1

    # setter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$302(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;I)I

    .line 549
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 562
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$100(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 552
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->WrongSensor:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->dismissErrorDialogIfShowing()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$400(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$300(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$200(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    .line 557
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/service/fingerprint/FingerprintManagerReceiver;->onError(I)V

    .line 567
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$500(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)Landroid/service/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->cancel()V

    .line 571
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$500(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)Landroid/service/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 572
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->showFailedEnrollmentDialog()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->access$600(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 573
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;->this$0:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0
.end method
