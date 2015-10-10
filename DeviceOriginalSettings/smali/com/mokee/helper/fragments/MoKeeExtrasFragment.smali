.class public Lcom/mokee/helper/fragments/MoKeeExtrasFragment;
.super Landroid/preference/PreferenceFragment;
.source "MoKeeExtrasFragment.java"

# interfaces
.implements Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
.implements Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mDownloadId:J

.field private mDownloading:Z

.field private mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

.field private mExtrasFolder:Ljava/io/File;

.field private mExtrasList:Landroid/preference/PreferenceCategory;

.field private mFileName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartUpdateVisible:Z

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateProgress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "MoKeeExtrasFragment"

    sput-object v0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    .line 83
    iput-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mStartUpdateVisible:Z

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;

    invoke-direct {v0, p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;

    invoke-direct {v0, p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateProgress:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;
    .param p1, "x1"    # J

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->deleteOldUpdates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mStartUpdateVisible:Z

    return p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->extrasLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->checkForDownloadCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Lcom/mokee/helper/widget/ItemPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->resetDownloadState()V

    return-void
.end method

.method private checkForDownloadCompleted(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 391
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string v5, "download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 396
    .local v0, "downloadId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 400
    const-string v5, "download_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "fullPathName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 406
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mokee/helper/widget/ItemPreference;

    .line 410
    .local v4, "pref":Lcom/mokee/helper/widget/ItemPreference;
    if-eqz v4, :cond_2

    .line 411
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 413
    invoke-virtual {p0, v4}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V

    .line 415
    :cond_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->resetDownloadState()V

    goto :goto_0
.end method

.method private checkForUpdates(I)V
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const/4 v4, 0x1

    .line 324
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "mkextras.state"

    invoke-static {v1, v2, v3}, Lcom/mokee/helper/misc/State;->saveMKState(Landroid/content/Context;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->refreshExtrasPreferences(Ljava/util/LinkedList;)V

    .line 331
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 335
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 336
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 337
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a005e

    invoke-virtual {p0, v2}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 339
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;

    invoke-direct {v2, p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 351
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "checkIntent":Landroid/content/Intent;
    const-string v1, "com.mokee.mkupdater.action.CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "download_flag"

    const/16 v2, 0x401

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 355
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method

.method private confirmDeleteAll()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;

    invoke-direct {v2, p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    return-void
.end method

.method private deleteOldUpdates()Z
    .locals 4

    .prologue
    const v3, 0x7f090061

    .line 375
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-static {v1}, Lcom/mokee/helper/utils/Utils;->deleteDir(Ljava/io/File;)Z

    .line 377
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 378
    const/4 v0, 0x1

    .line 379
    .local v0, "success":Z
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 387
    :goto_0
    return v0

    .line 380
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    const/4 v0, 0x0

    .line 382
    .restart local v0    # "success":Z
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 384
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    .line 385
    .restart local v0    # "success":Z
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0
.end method

.method private extrasLayout()V
    .locals 10

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->updateLastCheckPreference()V

    .line 239
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 240
    .local v2, "existingFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->makeExtraFolder()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    .line 241
    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    new-instance v8, Lcom/mokee/helper/utils/UpdateFilter;

    const-string v9, ".zip|.apk"

    invoke-direct {v8, v9}, Lcom/mokee/helper/utils/UpdateFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 242
    .local v4, "files":[Ljava/io/File;
    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 243
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 244
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 245
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v7}, Lcom/mokee/helper/utils/Utils;->cancelNotification(Landroid/content/Context;)V

    .line 253
    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const-string v8, "mkextras.state"

    invoke-static {v7, v8}, Lcom/mokee/helper/misc/State;->loadMKState(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    .line 255
    .local v1, "availableUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    invoke-direct {p0, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->refreshExtrasPreferences(Ljava/util/LinkedList;)V

    .line 256
    return-void
.end method

.method private refreshExtrasPreferences(Ljava/util/LinkedList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mokee/helper/misc/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "updates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    if-nez v12, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mokee/helper/misc/ItemInfo;

    .line 267
    .local v10, "ui":Lcom/mokee/helper/misc/ItemInfo;
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 268
    .local v2, "isDownloading":Z
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/mokee/helper/utils/Utils;->isLocaUpdateFile(Ljava/lang/String;Z)Z

    move-result v6

    .line 269
    .local v6, "isLocalFile":Z
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".zip"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 270
    .local v7, "isZip":Z
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".apk"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 271
    .local v1, "isApk":Z
    const/4 v5, 0x0

    .line 272
    .local v5, "isInstall":Z
    const/4 v3, 0x0

    .line 273
    .local v3, "isExtrasUpdate":Z
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "gapps_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 274
    .local v4, "isGMS":Z
    if-nez v7, :cond_2

    if-eqz v1, :cond_3

    .line 275
    :cond_2
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getCheckflag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/mokee/utils/MoKeeUtils;->isApkInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    .line 276
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 277
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getCheckflag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/mokee/utils/MoKeeUtils;->isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    .line 278
    if-eqz v5, :cond_3

    .line 279
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mokee/helper/utils/Utils;->checkGmsVersion(Ljava/lang/String;)Z

    move-result v3

    .line 283
    :cond_3
    const/4 v9, 0x3

    .line 284
    .local v9, "style":I
    if-eqz v2, :cond_6

    .line 286
    const/4 v9, 0x2

    .line 298
    :cond_4
    :goto_2
    new-instance v11, Lcom/mokee/helper/widget/ItemPreference;

    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v11, v12, v10, v9}, Lcom/mokee/helper/widget/ItemPreference;-><init>(Landroid/content/Context;Lcom/mokee/helper/misc/ItemInfo;I)V

    .line 299
    .local v11, "up":Lcom/mokee/helper/widget/ItemPreference;
    invoke-virtual {v11, p0}, Lcom/mokee/helper/widget/ItemPreference;->setOnActionListener(Lcom/mokee/helper/widget/ItemPreference$OnActionListener;)V

    .line 300
    invoke-virtual {v10}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mokee/helper/widget/ItemPreference;->setKey(Ljava/lang/String;)V

    .line 303
    if-eqz v2, :cond_5

    .line 304
    iput-object v11, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    .line 305
    invoke-virtual {v11, p0}, Lcom/mokee/helper/widget/ItemPreference;->setOnReadyListener(Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;)V

    .line 306
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    .line 309
    :cond_5
    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 287
    .end local v11    # "up":Lcom/mokee/helper/widget/ItemPreference;
    :cond_6
    if-eqz v3, :cond_7

    if-nez v6, :cond_7

    .line 288
    const/4 v9, 0x1

    goto :goto_2

    .line 289
    :cond_7
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    .line 290
    const/4 v9, 0x5

    goto :goto_2

    .line 291
    :cond_8
    if-eqz v3, :cond_9

    if-nez v6, :cond_a

    :cond_9
    if-nez v5, :cond_b

    if-eqz v6, :cond_b

    .line 292
    :cond_a
    const/4 v9, 0x3

    goto :goto_2

    .line 293
    :cond_b
    if-eqz v5, :cond_4

    .line 295
    const/4 v9, 0x4

    goto :goto_2

    .line 312
    .end local v1    # "isApk":Z
    .end local v2    # "isDownloading":Z
    .end local v3    # "isExtrasUpdate":Z
    .end local v4    # "isGMS":Z
    .end local v5    # "isInstall":Z
    .end local v6    # "isLocalFile":Z
    .end local v7    # "isZip":Z
    .end local v9    # "style":I
    .end local v10    # "ui":Lcom/mokee/helper/misc/ItemInfo;
    :cond_c
    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    if-nez v12, :cond_0

    .line 313
    new-instance v8, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;

    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const/4 v13, 0x0

    const v14, 0x7f0b0006

    invoke-direct {v8, v12, v13, v14}, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 314
    .local v8, "pref":Lcom/mokee/helper/widget/EmptyListPreferenceStyle;
    const v12, 0x7f0a0047

    invoke-virtual {v8, v12}, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;->setSummary(I)V

    .line 315
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;->setEnabled(Z)V

    .line 316
    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private resetDownloadState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    .line 231
    iput-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mFileName:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    .line 233
    iput-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    .line 234
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    .line 134
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->addPreferencesFromResource(I)V

    .line 137
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const-string v1, "downloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 139
    const-string v0, "extras_category"

    invoke-virtual {p0, v0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasList:Landroid/preference/PreferenceCategory;

    .line 141
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->updateLastCheckPreference()V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->setHasOptionsMenu(Z)V

    .line 144
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x2

    const v1, 0x7f0a002d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 150
    const v0, 0x7f0a002e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 154
    const/4 v0, 0x1

    const v1, 0x7f0a002f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 156
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 157
    return-void
.end method

.method public onDeleteUpdate(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    const v6, 0x7f090061

    .line 573
    invoke-virtual {p1}, Lcom/mokee/helper/widget/ItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 576
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 578
    .local v2, "zipFileToDelete":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 585
    const v3, 0x7f0a007c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmokee/support/widget/snackbar/Snackbar;->text(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 594
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "zipFileToDelete":Ljava/io/File;
    :goto_0
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->extrasLayout()V

    .line 595
    :goto_1
    return-void

    .line 581
    .restart local v2    # "zipFileToDelete":Ljava/io/File;
    :cond_0
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->TAG:Ljava/lang/String;

    const-string v4, "Update to delete not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 587
    .end local v2    # "zipFileToDelete":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mExtrasFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 588
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a0081

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 590
    :cond_2
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a0080

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    return v1

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 166
    :pswitch_1
    const/16 v0, 0x401

    invoke-direct {p0, v0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->checkForUpdates(I)V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->confirmDeleteAll()V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onPauseDownload(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 517
    iget-boolean v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0069

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->resetDownloadState()V

    .line 520
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/mokee/helper/service/DownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v1, "download_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const-string v1, "download_url"

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "download_extras_url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 527
    return-void
.end method

.method public onReady(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mokee/helper/widget/ItemPreference;->setOnReadyListener(Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;)V

    .line 600
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 420
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 422
    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "download_extras_id"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    .line 423
    iget-wide v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    .line 424
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v4

    iget-wide v6, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfo(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v0

    .line 425
    .local v0, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Lcom/mokee/helper/misc/DownLoadInfo;->getState()I

    move-result v3

    .line 427
    .local v3, "status":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 430
    :cond_0
    invoke-virtual {v0}, Lcom/mokee/helper/misc/DownLoadInfo;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "localFileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 432
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mFileName:Ljava/lang/String;

    .line 438
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v2    # "localFileName":Ljava/lang/String;
    .end local v3    # "status":I
    :cond_1
    iget-wide v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mFileName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 439
    :cond_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->resetDownloadState()V

    .line 442
    :cond_3
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->extrasLayout()V

    .line 443
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.mokee.mkupdater.action.UPDATE_CHECK_FINISHED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.mokee.mkupdater.action.DOWNLOAD_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v4, "onNewIntent"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 448
    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->checkForDownloadCompleted(Landroid/content/Intent;)V

    .line 449
    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method public onStartDownload(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 5
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    const v4, 0x7f090061

    .line 466
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-boolean v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    if-eqz v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 476
    :cond_2
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    .line 478
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    invoke-virtual {v2}, Lcom/mokee/helper/widget/ItemPreference;->getItemInfo()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v1

    .line 479
    .local v1, "ui":Lcom/mokee/helper/misc/ItemInfo;
    if-eqz v1, :cond_0

    .line 483
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 484
    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mFileName:Ljava/lang/String;

    .line 485
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    .line 488
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/mokee/helper/receiver/DownloadReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mokee.mkupdater.action.DOWNLOAD_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v2, "update_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    const-string v2, "download_flag"

    const/16 v3, 0x401

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 531
    invoke-virtual {p1}, Lcom/mokee/helper/widget/ItemPreference;->getItemInfo()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v1

    .line 534
    .local v1, "itemInfo":Lcom/mokee/helper/misc/ItemInfo;
    iget-boolean v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mStartUpdateVisible:Z

    if-eqz v2, :cond_0

    .line 569
    :goto_0
    return-void

    .line 537
    :cond_0
    iput-boolean v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mStartUpdateVisible:Z

    .line 539
    const v2, 0x7f0a008a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "dialogBody":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0089

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0041

    new-instance v4, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;

    invoke-direct {v4, p0, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Lcom/mokee/helper/misc/ItemInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0043

    new-instance v4, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$6;

    invoke-direct {v4, p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$6;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 455
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 457
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 461
    :cond_0
    return-void
.end method

.method public onStopDownload(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 4
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 498
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 499
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->resetDownloadState()V

    .line 513
    :goto_0
    return-void

    .line 502
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0042

    new-instance v2, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;-><init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Lcom/mokee/helper/widget/ItemPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public updateLastCheckPreference()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 604
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_last_extras_check"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 605
    .local v2, "lastCheckTime":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 606
    const-string v5, "mokee_last_check"

    const v6, 0x7f0a0021

    invoke-virtual {p0, v6}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/mokee/helper/utils/Utils;->setSummaryFromString(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 608
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 609
    .local v1, "lastCheck":Ljava/util/Date;
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "date":Ljava/lang/String;
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "time":Ljava/lang/String;
    const-string v5, "mokee_last_check"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/mokee/helper/utils/Utils;->setSummaryFromString(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
