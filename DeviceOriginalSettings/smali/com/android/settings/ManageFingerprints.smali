.class public Lcom/flyme/deviceoriginalsettings/ManageFingerprints;
.super Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;,
        Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;,
        Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;,
        Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 59
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mWaitingForConfirmation:Z

    .line 453
    return-void
.end method

.method public static createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFallback"    # Z
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z

    .prologue
    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    return-object v0
.end method


# virtual methods
.method protected createFallbackIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, "fallBackIntent":Landroid/content/Intent;
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v1, "lockscreen.fingerprint_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v1, ":settings:show_fragment_title"

    const v2, 0x7f0a0616

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
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
    .line 85
    const-class v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 131
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mWaitingForConfirmation:Z

    .line 133
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 143
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    return-void

    .line 134
    :cond_0
    const/16 v0, 0x63

    if-ne p1, v0, :cond_2

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_2

    .line 136
    :cond_1
    const-string v0, "TAG"

    const-string v1, "fallback password set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 138
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setUseFingerprint()V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->finish()V

    .line 141
    const-string v0, "TAG"

    const-string v1, "fallback password NOT set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v5, 0x7f0a03f3

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 92
    .local v3, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v8, "confirm_credentials"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    .local v0, "confirmCredentials":Z
    if-nez v0, :cond_3

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v5, "password_confirmed"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 99
    const-string v5, "waiting_for_confirmation"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mWaitingForConfirmation:Z

    .line 102
    :cond_0
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mWaitingForConfirmation:Z

    if-nez v5, :cond_1

    .line 103
    new-instance v2, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0, v9}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 105
    .local v2, "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    const/16 v5, 0x64

    invoke-virtual {v2, v5, v9, v9}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 106
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    .line 113
    .end local v2    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.fingerprint_fallback"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 115
    .local v4, "setFallback":Z
    if-eqz v4, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->createFallbackIntent()Landroid/content/Intent;

    move-result-object v1

    .line 117
    .local v1, "fallBackIntent":Landroid/content/Intent;
    const/16 v5, 0x63

    invoke-virtual {p0, v1, v5}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    .end local v1    # "fallBackIntent":Landroid/content/Intent;
    :cond_2
    return-void

    .end local v4    # "setFallback":Z
    :cond_3
    move v5, v7

    .line 95
    goto :goto_0

    .line 108
    .restart local v2    # "helper":Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
    :cond_4
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method
