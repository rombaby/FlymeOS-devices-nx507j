.class public Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
.super Landroid/app/Fragment;
.source "EnrollFingerprint.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnrollFingerprintFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;,
        Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;,
        Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;,
        Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;,
        Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;
    }
.end annotation


# instance fields
.field private mCompletedCheckmark:Landroid/view/View;

.field private mConsecutiveErrorCount:I

.field private mCurrentEnrollmentStep:I

.field private mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

.field private mErrorTitles:[Ljava/lang/String;

.field private mFingerprintReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private mFpM:Landroid/service/fingerprint/FingerprintManager;

.field private mInfoGraphic:Landroid/widget/ImageView;

.field private mInstructions:Landroid/widget/TextView;

.field private mNumEnrollmentSteps:I

.field private mProcessingProgress:Landroid/widget/ProgressBar;

.field private mScanSuccessTextIndex:I

.field private mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

.field private mStepsCompleted:Landroid/widget/TextView;

.field private mSuccessfulScanTitles:[Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field protected mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

.field private mWrongSensorTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 163
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 168
    iput v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mScanSuccessTextIndex:I

    .line 169
    iput v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    .line 509
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mWrongSensorTouchListener:Landroid/view/View$OnTouchListener;

    .line 520
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

    .line 537
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$3;-><init>(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFingerprintReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    .line 598
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->showWrongSensorDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    return v0
.end method

.method static synthetic access$202(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    return v0
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    return p1
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->dismissErrorDialogIfShowing()V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)Landroid/service/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->showFailedEnrollmentDialog()V

    return-void
.end method

.method private cancelEnrollmentStepTimeout()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method private dismissErrorDialogIfShowing()V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 504
    .local v0, "prev":Landroid/app/Fragment;
    instance-of v1, v0, Landroid/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 505
    check-cast v0, Landroid/app/DialogFragment;

    .end local v0    # "prev":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 507
    :cond_0
    return-void
.end method

.method private showFailedEnrollmentDialog()V
    .locals 3

    .prologue
    .line 498
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;->newInstance(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;)Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$FailedEnrollmentDialogFragment;

    move-result-object v0

    .line 499
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private showWrongSensorDialog()V
    .locals 3

    .prologue
    .line 493
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;->newInstance()Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$WrongSensorDialogFragment;

    move-result-object v0

    .line 494
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private startEnrollmentStepTimeout()V
    .locals 4

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 534
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mEnrollmentStepTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    return-void
.end method


# virtual methods
.method protected getEnrollmentActivity()Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getEnrollmentActivity()Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->setFragmentBarListener(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;)V

    .line 287
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    .line 288
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    const v0, 0x7f040066

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    if-eq v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->cancel()V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 321
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 322
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 323
    return-void
.end method

.method public onNavigateBack()V
    .locals 2

    .prologue
    .line 331
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 343
    :goto_0
    :pswitch_0
    return-void

    .line 337
    :pswitch_1
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNavigateNext()V
    .locals 2

    .prologue
    .line 347
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    :goto_0
    :pswitch_0
    return-void

    .line 349
    :pswitch_1
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 327
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 298
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 299
    const v0, 0x7f110005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    .line 300
    const v0, 0x7f110108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f11010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mInstructions:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f11010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mInfoGraphic:Landroid/widget/ImageView;

    .line 303
    const v0, 0x7f110109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mProcessingProgress:Landroid/widget/ProgressBar;

    .line 304
    const v0, 0x7f11010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    .line 305
    const v0, 0x7f11010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCompletedCheckmark:Landroid/view/View;

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    .line 308
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mSuccessfulScanTitles:[Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mErrorTitles:[Ljava/lang/String;

    .line 312
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 313
    return-void
.end method

.method protected updateStage(Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V
    .locals 13
    .param p1, "stage"    # Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .prologue
    .line 369
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 371
    .local v4, "previousStage":Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    .line 373
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget v9, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->titleMessage:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mInstructions:Landroid/widget/TextView;

    iget v9, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->instructionMessage:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 375
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mInfoGraphic:Landroid/widget/ImageView;

    iget v9, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->infoGraphic:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getEnrollmentActivity()Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;

    move-result-object v0

    .line 377
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;
    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->getEnrollmentActivity()Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->getSetupBar()Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v5

    .line 383
    .local v5, "setupBar":Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    iget-object v8, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->backMode:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    iget-boolean v8, v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->enabled:Z

    if-eqz v8, :cond_5

    .line 384
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    .line 385
    .local v1, "backButton":Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 386
    iget-object v8, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->backMode:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;

    iget v8, v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$BackButtonMode;->text:I

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    .line 391
    .end local v1    # "backButton":Landroid/widget/Button;
    :goto_1
    iget-object v8, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->nextMode:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    iget-boolean v8, v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->enabled:Z

    if-eqz v8, :cond_6

    .line 392
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    .line 393
    .local v3, "nextButton":Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 394
    iget-object v8, p1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->nextMode:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    iget v8, v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->text:I

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(I)V

    .line 399
    .end local v3    # "nextButton":Landroid/widget/Button;
    :goto_2
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v9, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentStep:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    sget-object v9, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v8, v9, :cond_7

    .line 400
    :cond_2
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    .line 405
    :goto_3
    sget-object v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$1;->$SwitchMap$com$android$settings$EnrollFingerprint$EnrollFingerprintFragment$Stage:[I

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v9}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 424
    :pswitch_0
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    const/4 v6, 0x0

    .line 426
    .local v6, "stepPercentage":F
    :goto_4
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    float-to-int v9, v6

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setProgressAnimated(I)V

    .line 427
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_4

    .line 429
    sget-object v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v4, v8, :cond_3

    .line 430
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 431
    const/4 v8, 0x0

    iput v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    .line 433
    :cond_3
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const-string v9, "%d/%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    iget v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_4

    .line 439
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mScanSuccessTextIndex:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mScanSuccessTextIndex:I

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mSuccessfulScanTitles:[Ljava/lang/String;

    array-length v9, v9

    rem-int v7, v8, v9

    .line 440
    .local v7, "titleIdx":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mSuccessfulScanTitles:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    .end local v7    # "titleIdx":I
    :cond_4
    sget-object v8, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    if-ne v4, v8, :cond_9

    .line 445
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFingerprintReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    invoke-virtual {v8, v9}, Landroid/service/fingerprint/FingerprintManager;->startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V

    .line 446
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    const-wide/32 v10, 0x927c0

    invoke-virtual {v8, v10, v11}, Landroid/service/fingerprint/FingerprintManager;->enroll(J)V

    .line 447
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mProcessingProgress:Landroid/widget/ProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 448
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mWrongSensorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 449
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V

    goto/16 :goto_0

    .line 388
    .end local v6    # "stepPercentage":F
    :cond_5
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 396
    :cond_6
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 402
    :cond_7
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 407
    :pswitch_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCompletedCheckmark:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setProgress(I)V

    .line 410
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 411
    const/4 v8, 0x0

    iput v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    .line 412
    const/4 v8, -0x1

    iput v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    goto/16 :goto_0

    .line 415
    :pswitch_2
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const-string v9, "%d/%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 421
    :pswitch_3
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 424
    :cond_8
    const/high16 v8, 0x42c80000    # 100.0f

    iget v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    int-to-float v9, v9

    div-float v6, v8, v9

    goto/16 :goto_4

    .line 450
    .restart local v6    # "stepPercentage":F
    :cond_9
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 451
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    const v9, 0x7f0a040f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 453
    :cond_a
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCurrentEnrollmentStep:I

    iget v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mNumEnrollmentSteps:I

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_0

    .line 455
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    const v9, 0x7f0a0410

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 459
    .end local v6    # "stepPercentage":F
    :pswitch_4
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->showError(Z)V

    .line 460
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mErrorTitles:[Ljava/lang/String;

    iget v10, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mErrorTitles:[Ljava/lang/String;

    array-length v11, v11

    rem-int/2addr v10, v11

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    .line 462
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mConsecutiveErrorCount:I

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 463
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/service/fingerprint/FingerprintManager;->cancel()V

    .line 464
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 465
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 466
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->showFailedEnrollmentDialog()V

    goto/16 :goto_0

    .line 470
    :pswitch_5
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setVisibility(I)V

    .line 471
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepProgress:Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/FingerprintProgressBar;->setProgress(I)V

    .line 472
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mCompletedCheckmark:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mStepsCompleted:Landroid/widget/TextView;

    const v9, 0x7f0a0409

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 474
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mProcessingProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 475
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->cancelEnrollmentStepTimeout()V

    .line 478
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;->mFpM:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v8}, Landroid/service/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "enrolled":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v2, :cond_0

    const/4 v8, 0x5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 482
    invoke-virtual {v5}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getBackButton()Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
