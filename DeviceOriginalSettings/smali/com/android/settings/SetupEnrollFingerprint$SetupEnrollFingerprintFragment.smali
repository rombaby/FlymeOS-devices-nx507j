.class public Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;
.super Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
.source "SetupEnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEnrollFingerprintFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateBack()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->onNavigateBack()V

    .line 168
    :goto_0
    return-void

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 172
    sget-object v1, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 180
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->onNavigateNext()V

    .line 182
    :goto_0
    return-void

    .line 174
    :pswitch_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setUseFingerprint()V

    .line 176
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 177
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 140
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;->getEnrollmentActivity()Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;

    move-result-object v0

    .line 141
    .local v0, "enrollmentActivity":Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->getSetupBar()Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    .line 146
    .local v1, "setupBar":Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    sget-object v2, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentFinished:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq p1, v2, :cond_1

    .line 147
    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0a05aa

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 151
    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
