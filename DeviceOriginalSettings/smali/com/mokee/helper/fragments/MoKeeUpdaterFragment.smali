.class public Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
.super Landroid/preference/PreferenceFragment;
.source "MoKeeUpdaterFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
.implements Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;


# static fields
.field private static MoKeeVersionType:Ljava/lang/String;

.field private static MoKeeVersionTypeString:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/app/Activity;

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mUpdateOTA:Landroid/preference/SwitchPreference;

.field private static updateTypeString:Ljava/lang/String;


# instance fields
.field private mAdmobView:Lcom/mokee/helper/widget/AdmobPreference;

.field private mDownloadId:J

.field private mDownloading:Z

.field private mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

.field private mExpHitCountdown:I

.field private mFileName:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/preference/PreferenceScreen;

.field private mStartUpdateVisible:Z

.field private mUpdateCheck:Landroid/preference/ListPreference;

.field private mUpdateFolder:Ljava/io/File;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateProgress:Ljava/lang/Runnable;

.field private mUpdateType:Landroid/preference/ListPreference;

.field private mUpdatesList:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "MoKeeUpdaterFragment"

    sput-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    .line 96
    iput-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mStartUpdateVisible:Z

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;

    invoke-direct {v0, p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    new-instance v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$2;

    invoke-direct {v0, p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$2;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateProgress:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
    .param p1, "x1"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->deleteOldUpdates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mStartUpdateVisible:Z

    return p1
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateUpdatesType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForDownloadCompleted(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Lcom/mokee/helper/widget/ItemPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->resetDownloadState()V

    return-void
.end method

.method private checkForDownloadCompleted(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 629
    if-nez p1, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    const-string v5, "download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 634
    .local v0, "downloadId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 638
    const-string v5, "download_path"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "fullPathName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 644
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mokee/helper/widget/ItemPreference;

    .line 648
    .local v4, "pref":Lcom/mokee/helper/widget/ItemPreference;
    if-eqz v4, :cond_2

    .line 649
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 651
    invoke-virtual {p0, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V

    .line 653
    :cond_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->resetDownloadState()V

    goto :goto_0
.end method

.method private checkForUpdates(I)V
    .locals 6
    .param p1, "flag"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 550
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "mkupdater.state"

    invoke-static {v1, v2, v3}, Lcom/mokee/helper/misc/State;->saveMKState(Landroid/content/Context;Ljava/util/LinkedList;Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->refreshPreferences(Ljava/util/LinkedList;)V

    .line 556
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

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

    .line 560
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 561
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 562
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0a005c

    invoke-virtual {p0, v2}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 564
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 565
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$4;

    invoke-direct {v2, p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$4;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 579
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_ota_check"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_ota_check_manual"

    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_ota_check"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 582
    :cond_2
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    .local v0, "checkIntent":Landroid/content/Intent;
    const-string v1, "com.mokee.mkupdater.action.CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v1, "download_flag"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 586
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method

.method private confirmDeleteAll()V
    .locals 3

    .prologue
    .line 590
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0079

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;

    invoke-direct {v2, p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 601
    return-void
.end method

.method private deleteOldUpdates()Z
    .locals 4

    .prologue
    const v3, 0x7f090061

    .line 606
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-static {v1}, Lcom/mokee/helper/utils/Utils;->deleteDir(Ljava/io/File;)Z

    .line 608
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 609
    const/4 v0, 0x1

    .line 610
    .local v0, "success":Z
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 618
    :goto_0
    return v0

    .line 611
    .end local v0    # "success":Z
    :cond_0
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    const/4 v0, 0x0

    .line 613
    .restart local v0    # "success":Z
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 615
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    .line 616
    .restart local v0    # "success":Z
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a007d

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0
.end method

.method private isOTA(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private mapCheckValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 528
    .local v3, "resources":Landroid/content/res/Resources;
    const/high16 v4, 0x7f0c0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "checkNames":[Ljava/lang/String;
    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "checkValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 531
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    aget-object v4, v0, v2

    .line 535
    :goto_1
    return-object v4

    .line 530
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const v4, 0x7f0a003f

    invoke-virtual {p0, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static refreshOTAOption()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v4, 0x0

    .line 258
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mokee/helper/utils/Utils;->getPaidTotal(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    .line 259
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ota_check"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 261
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/mokee/helper/utils/Utils;->getPaidTotal(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionTypeString:Ljava/lang/String;

    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateTypeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_ota_check"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    :cond_1
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 267
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public static refreshOption()V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 254
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->refreshOTAOption()V

    .line 255
    return-void
.end method

.method private refreshPreferences(Ljava/util/LinkedList;)V
    .locals 13
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
    .local p1, "updates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 468
    iget-object v11, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    if-nez v11, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v11, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 474
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".zip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "installedZip":Ljava/lang/String;
    const/4 v4, 0x1

    .line 477
    .local v4, "isNew":Z
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mokee/helper/misc/ItemInfo;

    .line 479
    .local v7, "ui":Lcom/mokee/helper/misc/ItemInfo;
    invoke-virtual {v7}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 480
    .local v2, "isDownloading":Z
    invoke-virtual {v7}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/mokee/helper/utils/Utils;->isLocaUpdateFile(Ljava/lang/String;Z)Z

    move-result v3

    .line 481
    .local v3, "isLocalFile":Z
    const/4 v6, 0x3

    .line 482
    .local v6, "style":I
    sget-object v11, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "pref_ota_check"

    invoke-interface {v11, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_5

    .line 483
    invoke-virtual {v7}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mokee/helper/utils/Utils;->isNewVersion(Ljava/lang/String;)Z

    move-result v4

    .line 490
    :cond_2
    if-eqz v2, :cond_8

    .line 492
    const/4 v6, 0x2

    .line 504
    :cond_3
    :goto_2
    new-instance v8, Lcom/mokee/helper/widget/ItemPreference;

    sget-object v11, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v8, v11, v7, v6}, Lcom/mokee/helper/widget/ItemPreference;-><init>(Landroid/content/Context;Lcom/mokee/helper/misc/ItemInfo;I)V

    .line 505
    .local v8, "up":Lcom/mokee/helper/widget/ItemPreference;
    invoke-virtual {v8, p0}, Lcom/mokee/helper/widget/ItemPreference;->setOnActionListener(Lcom/mokee/helper/widget/ItemPreference$OnActionListener;)V

    .line 506
    invoke-virtual {v7}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/mokee/helper/widget/ItemPreference;->setKey(Ljava/lang/String;)V

    .line 509
    if-eqz v2, :cond_4

    .line 510
    iput-object v8, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    .line 511
    invoke-virtual {v8, p0}, Lcom/mokee/helper/widget/ItemPreference;->setOnReadyListener(Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;)V

    .line 512
    iput-boolean v9, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    .line 515
    :cond_4
    iget-object v11, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 485
    .end local v8    # "up":Lcom/mokee/helper/widget/ItemPreference;
    :cond_5
    invoke-virtual {v7}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v12, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-static {v12, v9}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v11, v12, :cond_7

    move v4, v9

    .line 486
    :goto_3
    if-nez v4, :cond_2

    .line 518
    .end local v2    # "isDownloading":Z
    .end local v3    # "isLocalFile":Z
    .end local v6    # "style":I
    .end local v7    # "ui":Lcom/mokee/helper/misc/ItemInfo;
    :cond_6
    iget-object v9, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 519
    new-instance v5, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;

    sget-object v9, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const/4 v11, 0x0

    const v12, 0x7f0b0006

    invoke-direct {v5, v9, v11, v12}, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 520
    .local v5, "pref":Lcom/mokee/helper/widget/EmptyListPreferenceStyle;
    sget-object v9, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_c

    const v9, 0x7f0a0046

    :goto_4
    invoke-virtual {v5, v9}, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;->setSummary(I)V

    .line 521
    invoke-virtual {v5, v10}, Lcom/mokee/helper/widget/EmptyListPreferenceStyle;->setEnabled(Z)V

    .line 522
    iget-object v9, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .end local v5    # "pref":Lcom/mokee/helper/widget/EmptyListPreferenceStyle;
    .restart local v2    # "isDownloading":Z
    .restart local v3    # "isLocalFile":Z
    .restart local v6    # "style":I
    .restart local v7    # "ui":Lcom/mokee/helper/misc/ItemInfo;
    :cond_7
    move v4, v10

    .line 485
    goto :goto_3

    .line 493
    :cond_8
    invoke-virtual {v7}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 495
    const/4 v6, 0x4

    goto :goto_2

    .line 496
    :cond_9
    if-nez v3, :cond_a

    if-eqz v4, :cond_a

    .line 497
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 498
    :cond_a
    if-nez v3, :cond_b

    if-nez v4, :cond_b

    .line 499
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 500
    :cond_b
    if-eqz v3, :cond_3

    .line 501
    const/4 v6, 0x3

    goto/16 :goto_2

    .line 520
    .end local v2    # "isDownloading":Z
    .end local v3    # "isLocalFile":Z
    .end local v6    # "style":I
    .end local v7    # "ui":Lcom/mokee/helper/misc/ItemInfo;
    .restart local v5    # "pref":Lcom/mokee/helper/widget/EmptyListPreferenceStyle;
    :cond_c
    const v9, 0x7f0a0045

    goto :goto_4
.end method

.method private resetDownloadState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    .line 425
    iput-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mFileName:Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    .line 427
    iput-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    .line 428
    return-void
.end method

.method private setAllTypeEntries()V
    .locals 4

    .prologue
    .line 895
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "entries":[Ljava/lang/String;
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "entryValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 900
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 901
    return-void
.end method

.method private setExperimentalTypeEntries()V
    .locals 4

    .prologue
    .line 913
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "entries":[Ljava/lang/String;
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "entryValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 918
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 919
    return-void
.end method

.method private setNormalTypeEntries()V
    .locals 4

    .prologue
    .line 904
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "entries":[Ljava/lang/String;
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "entryValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 909
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 910
    return-void
.end method

.method private setSummaryFromProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setUnofficialTypeEntries()V
    .locals 4

    .prologue
    .line 922
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "entries":[Ljava/lang/String;
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "entryValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 927
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 928
    return-void
.end method

.method private setUpdateTypeSummary(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 230
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 231
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 232
    .local v0, "entries":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 233
    aget-object v3, v1, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 234
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    aget-object v3, v0, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateTypeString:Ljava/lang/String;

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private updateLayout()V
    .locals 10

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLastCheckPreference()V

    .line 433
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 434
    .local v2, "existingFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->makeUpdateFolder()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    .line 435
    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    new-instance v8, Lcom/mokee/helper/utils/UpdateFilter;

    const-string v9, ".zip"

    invoke-direct {v8, v9}, Lcom/mokee/helper/utils/UpdateFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 436
    .local v4, "files":[Ljava/io/File;
    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 437
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 438
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 439
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    sget-object v7, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v7}, Lcom/mokee/helper/utils/Utils;->cancelNotification(Landroid/content/Context;)V

    .line 447
    sget-object v7, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const-string v8, "mkupdater.state"

    invoke-static {v7, v8}, Lcom/mokee/helper/misc/State;->loadMKState(Landroid/content/Context;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    .line 449
    .local v1, "availableUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    sget-object v7, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "pref_ota_check"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    .line 450
    new-instance v7, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$3;

    invoke-direct {v7, p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$3;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 464
    :cond_2
    invoke-direct {p0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->refreshPreferences(Ljava/util/LinkedList;)V

    .line 465
    return-void
.end method

.method private updateUpdatesType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 622
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_update_types"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 623
    invoke-direct {p0, p1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setUpdateTypeSummary(I)V

    .line 624
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->refreshOTAOption()V

    .line 625
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForUpdates(I)V

    .line 626
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sput-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    .line 160
    const v5, 0x7f07002d

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->addPreferencesFromResource(I)V

    .line 163
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const-string v6, "downloader"

    invoke-virtual {v5, v6, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 165
    const-string v5, "pref_root"

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mRootView:Landroid/preference/PreferenceScreen;

    .line 166
    const-string v5, "pref_admob"

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mokee/helper/widget/AdmobPreference;

    iput-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mAdmobView:Lcom/mokee/helper/widget/AdmobPreference;

    .line 167
    const-string v5, "updates_category"

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdatesList:Landroid/preference/PreferenceCategory;

    .line 168
    const-string v5, "pref_update_interval"

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    .line 169
    const-string v5, "pref_update_types"

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    .line 170
    const-string v5, "pref_ota_check"

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    sput-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    .line 173
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->getMoKeeVersionType()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionType:Ljava/lang/String;

    .line 174
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionType:Ljava/lang/String;

    const-string v6, "experimental"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 175
    .local v2, "isExperimental":Z
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionType:Ljava/lang/String;

    const-string v6, "unofficial"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    .line 176
    .local v3, "isUnofficial":Z
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "experimental_show"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, "experimentalShow":Z
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_update_types"

    sget-object v7, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionType:Ljava/lang/String;

    invoke-static {v7}, Lcom/mokee/helper/utils/Utils;->getUpdateType(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 178
    .local v4, "type":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_0

    .line 179
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "experimental_show"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_update_types"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    :cond_0
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 182
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_update_types"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 186
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_update_interval"

    const v7, 0x15180

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, "check":I
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 188
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mapCheckValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    .end local v0    # "check":I
    :cond_2
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    .line 193
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    if-nez v3, :cond_5

    .line 196
    if-eqz v1, :cond_4

    .line 197
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setExperimentalTypeEntries()V

    .line 208
    :goto_0
    invoke-direct {p0, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setUpdateTypeSummary(I)V

    .line 211
    :cond_3
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    sget-object v6, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionType:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/mokee/helper/utils/Utils;->getMoKeeVersionTypeString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionTypeString:Ljava/lang/String;

    .line 212
    const-string v5, "mokee_version_type"

    sget-object v6, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionTypeString:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/mokee/helper/utils/Utils;->setSummaryFromString(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->getMoKeeVersionType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "history"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 215
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->refreshOTAOption()V

    .line 216
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    sget-object v6, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v7, "pref_ota_check"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 217
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->isOTA(Z)V

    .line 223
    :goto_1
    const-string v5, "mokee_version"

    const-string v6, "ro.mk.version"

    invoke-direct {p0, v5, v6}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setSummaryFromProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLastCheckPreference()V

    .line 226
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setHasOptionsMenu(Z)V

    .line 227
    return-void

    .line 199
    :cond_4
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setNormalTypeEntries()V

    goto :goto_0

    .line 202
    :cond_5
    if-eqz v1, :cond_6

    .line 203
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setAllTypeEntries()V

    goto :goto_0

    .line 205
    :cond_6
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setUnofficialTypeEntries()V

    goto :goto_0

    .line 220
    :cond_7
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    sget-object v6, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 320
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mokee/helper/utils/Utils;->checkLicensed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x3

    const v1, 0x7f0a0030

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 324
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0a002d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 326
    const v0, 0x7f0a002e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 330
    const/4 v0, 0x1

    const v1, 0x7f0a002f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 332
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 333
    return-void
.end method

.method public onDeleteUpdate(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    const v6, 0x7f090061

    .line 814
    invoke-virtual {p1}, Lcom/mokee/helper/widget/ItemPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 816
    .local v0, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 817
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 819
    .local v2, "zipFileToDelete":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 826
    const v3, 0x7f0a007c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "message":Ljava/lang/String;
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmokee/support/widget/snackbar/Snackbar;->text(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 835
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "zipFileToDelete":Ljava/io/File;
    :goto_0
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLayout()V

    .line 836
    :goto_1
    return-void

    .line 822
    .restart local v2    # "zipFileToDelete":Ljava/io/File;
    :cond_0
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->TAG:Ljava/lang/String;

    const-string v4, "Update to delete not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    .end local v2    # "zipFileToDelete":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateFolder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 829
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 831
    :cond_2
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a007d

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 337
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return v2

    .line 339
    :pswitch_0
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 342
    :pswitch_1
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForUpdates(I)V

    goto :goto_0

    .line 345
    :pswitch_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->confirmDeleteAll()V

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPauseDownload(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 768
    iget-boolean v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    if-eqz v1, :cond_0

    .line 769
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a0069

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 770
    :cond_0
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->resetDownloadState()V

    .line 771
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 772
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/mokee/helper/service/DownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 773
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v1, "download_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    const-string v1, "download_url"

    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "download_url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 778
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 840
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 841
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 842
    .local v2, "value":I
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_update_interval"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 843
    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateCheck:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mapCheckValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 844
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    mul-int/lit16 v5, v2, 0x3e8

    invoke-static {v4, v5}, Lcom/mokee/helper/utils/Utils;->scheduleUpdateService(Landroid/content/Context;I)V

    .line 891
    .end local v2    # "value":I
    :goto_0
    return v3

    .line 846
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateType:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 847
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 848
    .restart local v2    # "value":I
    if-eq v2, v3, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 852
    :cond_1
    const/4 v1, 0x0

    .line 853
    .local v1, "messageId":I
    packed-switch v2, :pswitch_data_0

    .line 867
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0050

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0a0042

    invoke-virtual {p0, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;

    invoke-direct {v6, p0, v2}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;I)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0a0043

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v3, v4

    .line 876
    goto :goto_0

    .line 855
    :pswitch_0
    const v1, 0x7f0a004c

    .line 856
    goto :goto_1

    .line 858
    :pswitch_1
    const v1, 0x7f0a004d

    .line 859
    goto :goto_1

    .line 861
    :pswitch_2
    const v1, 0x7f0a004e

    .line 862
    goto :goto_1

    .line 864
    :pswitch_3
    const v1, 0x7f0a004f

    goto :goto_1

    .line 878
    .end local v1    # "messageId":I
    :cond_2
    invoke-direct {p0, v2}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateUpdatesType(I)V

    goto :goto_0

    .line 881
    .end local v2    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateOTA:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_5

    .line 882
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 883
    .local v0, "enabled":Z
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_ota_check"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 884
    invoke-direct {p0, v0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->isOTA(Z)V

    .line 885
    if-eqz v0, :cond_4

    .line 886
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->MoKeeVersionType:Ljava/lang/String;

    invoke-static {v4}, Lcom/mokee/helper/utils/Utils;->getUpdateType(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateUpdatesType(I)V

    .line 888
    :cond_4
    const/16 v4, 0x400

    invoke-direct {p0, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForUpdates(I)V

    goto/16 :goto_0

    .end local v0    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    move v3, v4

    .line 891
    goto/16 :goto_0

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v9, 0x7f090061

    const/4 v2, 0x1

    .line 273
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mokee_version_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    :goto_0
    return v2

    .line 278
    :cond_0
    iget v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    if-lez v3, :cond_4

    .line 279
    iget v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    .line 280
    iget v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    if-nez v3, :cond_3

    .line 281
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "experimental_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 282
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a008d

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    sget-object v3, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v9}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 284
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->getMoKeeVersionType()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "MoKeeVersionType":Ljava/lang/String;
    const-string v2, "unofficial"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 286
    .local v1, "isUnofficial":Z
    if-nez v1, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setExperimentalTypeEntries()V

    .line 302
    .end local v0    # "MoKeeVersionType":Ljava/lang/String;
    .end local v1    # "isUnofficial":Z
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 289
    .restart local v0    # "MoKeeVersionType":Ljava/lang/String;
    .restart local v1    # "isUnofficial":Z
    :cond_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->setAllTypeEntries()V

    goto :goto_1

    .line 291
    .end local v0    # "MoKeeVersionType":Ljava/lang/String;
    .end local v1    # "isUnofficial":Z
    :cond_3
    iget v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 293
    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    iget v6, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v9}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_1

    .line 297
    :cond_4
    iget v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    if-gez v2, :cond_1

    .line 298
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a008e

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    sget-object v3, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v9}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_1
.end method

.method public onReady(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 2
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mokee/helper/widget/ItemPreference;->setOnReadyListener(Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;)V

    .line 357
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 243
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 244
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "experimental_show"

    invoke-static {}, Lcom/mokee/helper/utils/Utils;->getMoKeeVersionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "experimental"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mExpHitCountdown:I

    .line 247
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mokee/helper/utils/Utils;->checkLicensed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mRootView:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mAdmobView:Lcom/mokee/helper/widget/AdmobPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public onStart()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 658
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 660
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "download_id"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    .line 661
    iget-wide v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1

    .line 662
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v4

    iget-wide v6, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfo(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v0

    .line 663
    .local v0, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    if-eqz v0, :cond_1

    .line 664
    invoke-virtual {v0}, Lcom/mokee/helper/misc/DownLoadInfo;->getState()I

    move-result v3

    .line 665
    .local v3, "status":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 668
    :cond_0
    invoke-virtual {v0}, Lcom/mokee/helper/misc/DownLoadInfo;->getLocalFile()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "localFileName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 670
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mFileName:Ljava/lang/String;

    .line 676
    .end local v0    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v2    # "localFileName":Ljava/lang/String;
    .end local v3    # "status":I
    :cond_1
    iget-wide v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mFileName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 677
    :cond_2
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->resetDownloadState()V

    .line 680
    :cond_3
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLayout()V

    .line 681
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.mokee.mkupdater.action.UPDATE_CHECK_FINISHED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 682
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.mokee.mkupdater.action.DOWNLOAD_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v4, "onNewIntent"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    iget-object v5, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 686
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForDownloadCompleted(Landroid/content/Intent;)V

    .line 687
    sget-object v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method public onStartDownload(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 5
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    const v4, 0x7f090061

    .line 704
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-boolean v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    if-eqz v2, :cond_2

    .line 709
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    sget-object v3, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 715
    :cond_2
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    .line 717
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    invoke-virtual {v2}, Lcom/mokee/helper/widget/ItemPreference;->getItemInfo()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v1

    .line 718
    .local v1, "ui":Lcom/mokee/helper/misc/ItemInfo;
    if-eqz v1, :cond_0

    .line 722
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 723
    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mFileName:Ljava/lang/String;

    .line 724
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    .line 727
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/mokee/helper/receiver/DownloadReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 728
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.mokee.mkupdater.action.DOWNLOAD_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v2, "update_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    const-string v2, "download_flag"

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    sget-object v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 782
    invoke-virtual {p1}, Lcom/mokee/helper/widget/ItemPreference;->getItemInfo()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v1

    .line 785
    .local v1, "itemInfo":Lcom/mokee/helper/misc/ItemInfo;
    iget-boolean v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mStartUpdateVisible:Z

    if-eqz v2, :cond_0

    .line 810
    :goto_0
    return-void

    .line 788
    :cond_0
    iput-boolean v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mStartUpdateVisible:Z

    .line 790
    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a0088

    :goto_1
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "dialogBody":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0086

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0040

    new-instance v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$8;

    invoke-direct {v4, p0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$8;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Lcom/mokee/helper/misc/ItemInfo;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0043

    new-instance v4, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$7;

    invoke-direct {v4, p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$7;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 790
    .end local v0    # "dialogBody":Ljava/lang/String;
    :cond_1
    const v2, 0x7f0a0087

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 692
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 693
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    sget-object v0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 695
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 699
    :cond_0
    return-void
.end method

.method public onStopDownload(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 4
    .param p1, "pref"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 737
    :cond_0
    invoke-virtual {p1}, Lcom/mokee/helper/widget/ItemPreference;->getItemInfo()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/helper/utils/Utils;->isNewVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 742
    :goto_0
    invoke-direct {p0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->resetDownloadState()V

    .line 764
    :goto_1
    return-void

    .line 740
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    goto :goto_0

    .line 745
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0042

    new-instance v2, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;-><init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Lcom/mokee/helper/widget/ItemPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public updateLastCheckPreference()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 306
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "pref_last_update_check"

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 307
    .local v2, "lastCheckTime":J
    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    .line 308
    const-string v5, "mokee_last_check"

    const v6, 0x7f0a0021

    invoke-virtual {p0, v6}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/mokee/helper/utils/Utils;->setSummaryFromString(Landroid/preference/PreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 312
    .local v1, "lastCheck":Ljava/util/Date;
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "date":Ljava/lang/String;
    sget-object v5, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 314
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
