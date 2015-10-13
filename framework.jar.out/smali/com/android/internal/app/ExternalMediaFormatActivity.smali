.class public Lcom/android/internal/app/ExternalMediaFormatActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalMediaFormatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final POSITIVE_BUTTON:I = -0x1


# instance fields
.field private mIsOtgStorage:Z

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/android/internal/app/ExternalMediaFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ExternalMediaFormatActivity$1;-><init>(Lcom/android/internal/app/ExternalMediaFormatActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initVolumeType(Landroid/os/storage/StorageVolume;)V
    .locals 2
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v0, "/storage/usba"

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "ExternalMediaFormatActivity"

    const-string/jumbo v1, "otg storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mIsOtgStorage:Z

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v1, "storage_volume"

    iget-object v2, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->finish()V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "storage_volume"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    iput-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 64
    iget-object v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-direct {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->initVolumeType(Landroid/os/storage/StorageVolume;)V

    .line 66
    const-string v3, "ExternalMediaFormatActivity"

    const-string/jumbo v4, "onCreate!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x10404ff

    .line 70
    .local v2, "titleResId":I
    const v0, 0x1040500

    .line 71
    .local v0, "messageId":I
    iget-boolean v3, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mIsOtgStorage:Z

    if-eqz v3, :cond_0

    .line 72
    const v2, 0x30c0039

    .line 73
    const v0, 0x30c0039

    .line 75
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 77
    const v3, 0x1040501

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ExternalMediaFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 80
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->setupAlert()V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/internal/app/ExternalMediaFormatActivity;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/ExternalMediaFormatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method
