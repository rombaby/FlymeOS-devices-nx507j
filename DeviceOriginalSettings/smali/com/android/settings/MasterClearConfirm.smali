.class public Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;
.super Landroid/app/DialogFragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;
    }
.end annotation


# instance fields
.field private mEraseInternal:Z

.field private mEraseSdCard:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->doMasterClear(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->onResetConfirmed()V

    return-void
.end method

.method public static createInstance(ZZ)Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;
    .locals 3
    .param p0, "wipeInternal"    # Z
    .param p1, "wipeExternal"    # Z

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "wipe_media"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v2, "wipe_sdcard"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    new-instance v1, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    invoke-direct {v1}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;-><init>()V

    .line 143
    .local v1, "fragment":Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->setArguments(Landroid/os/Bundle;)V

    .line 145
    return-object v1
.end method

.method private static doMasterClear(Landroid/content/Context;ZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eraseInternal"    # Z
    .param p2, "eraseSdCard"    # Z

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "wipe_media"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string v1, "wipe_sdcard"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 176
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 186
    :goto_0
    return-void

    .line 179
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    const-string v1, "wipe_media"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onResetConfirmed()V
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 161
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseInternal:Z

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->createInstance(ZZ)Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "frp_dialog"

    invoke-virtual {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseInternal:Z

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-static {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->doMasterClear(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "wipe_media"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseInternal:Z

    .line 227
    if-eqz v0, :cond_0

    const-string v1, "wipe_sdcard"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 229
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->setShowsDialog(Z)V

    .line 230
    return-void

    :cond_1
    move v1, v3

    .line 226
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_factory_reset"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0897

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0887

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a03e0

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a05b5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a03df

    new-instance v3, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 209
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$2;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$2;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0
.end method
