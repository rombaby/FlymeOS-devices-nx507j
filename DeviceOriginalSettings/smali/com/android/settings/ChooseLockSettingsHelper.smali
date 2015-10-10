.class public final Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 38
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 43
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 44
    return-void
.end method

.method private confirmGesture(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 130
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockGestureEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedGestureExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    .line 133
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 136
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 137
    const-string v2, "com.android.settings"

    if-eqz p4, :cond_2

    const-class v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const-class v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private confirmPassword(ILjava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .prologue
    .line 158
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 171
    :goto_0
    return v1

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 162
    const-string v2, "com.android.settings"

    if-eqz p3, :cond_1

    const-class v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const-class v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockPassword;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 103
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    return v1

    .line 106
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 109
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 110
    const-string v2, "com.android.settings"

    if-eqz p4, :cond_2

    const-class v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern$InternalActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    const-class v1, Lcom/flyme/deviceoriginalsettings/ConfirmLockPattern;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;
    .param p4, "returnCredentials"    # Z

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "launched":Z
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 90
    :goto_0
    return v0

    .line 76
    :sswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 77
    goto :goto_0

    .line 79
    :sswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->confirmGesture(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 80
    goto :goto_0

    .line 87
    :sswitch_2
    invoke-direct {p0, p1, p2, p4}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->confirmPassword(ILjava/lang/CharSequence;Z)Z

    move-result v0

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
