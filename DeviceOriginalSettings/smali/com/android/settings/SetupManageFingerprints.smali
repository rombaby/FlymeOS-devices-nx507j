.class public Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints;
.super Lcom/flyme/deviceoriginalsettings/ManageFingerprints;
.source "SetupManageFingerprints.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints$SetupManageFingerprintsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method protected createFallbackIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/SetupEnrollFingerprint;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 80
    return-object v0
.end method

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
    .line 43
    const-class v0, Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints$SetupManageFingerprintsFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints$SetupManageFingerprintsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 53
    const p2, 0x7f0b0011

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints;->onBackPressed()V

    .line 65
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SetupManageFingerprints;->finish()V

    .line 71
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 60
    return-void
.end method
