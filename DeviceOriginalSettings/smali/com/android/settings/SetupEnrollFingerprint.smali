.class public Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;
.super Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;
.source "SetupEnrollFingerprint.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$1;,
        Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;
    }
.end annotation


# instance fields
.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    .line 49
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mWaitingForConfirmation:Z

    .line 136
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const-class v0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint$SetupEnrollFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 114
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mWaitingForConfirmation:Z

    .line 116
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    .line 121
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    return-void

    .line 117
    :cond_1
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-eq p2, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->finish()V

    goto :goto_0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 126
    const p2, 0x7f0b0011

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "confirm_credentials"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    .local v0, "confirmCredentials":Z
    if-nez v0, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const-string v4, "password_confirmed"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    .line 76
    const-string v4, "waiting_for_confirmation"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mWaitingForConfirmation:Z

    .line 79
    :cond_0
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mWaitingForConfirmation:Z

    if-nez v4, :cond_1

    .line 80
    new-instance v2, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0, v8}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 82
    .local v2, "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    const/16 v4, 0x64

    invoke-virtual {v2, v4, v8, v8}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 83
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    .line 89
    .end local v2    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "lockscreen.fingerprint_fallback"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 92
    .local v3, "needsFallback":Z
    if-eqz v3, :cond_2

    .line 93
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v7, Lcom/flyme/deviceoriginalsettings/SetupChooseLockGeneric;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, "fallBackIntent":Landroid/content/Intent;
    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    const-string v4, "lockscreen.fingerprint_fallback"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    const-string v4, "confirm_credentials"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v4, ":settings:show_fragment_title"

    const v5, 0x7f0a0616

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/flyme/deviceoriginalsettings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 100
    const/16 v4, 0x63

    invoke-virtual {p0, v1, v4}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    .end local v1    # "fallBackIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .end local v3    # "needsFallback":Z
    :cond_3
    move v4, v6

    .line 72
    goto :goto_0

    .line 85
    .restart local v2    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_4
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 133
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 134
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method
