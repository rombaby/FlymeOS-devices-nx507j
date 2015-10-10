.class public Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;
.super Landroid/app/DialogFragment;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrpDialog"
.end annotation


# instance fields
.field private mOriginalOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createInstance(ZZ)Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;
    .locals 3
    .param p0, "wipeInternal"    # Z
    .param p1, "wipeExternal"    # Z

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "wipe_media"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string v2, "wipe_sdcard"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    new-instance v1, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;

    invoke-direct {v1}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;-><init>()V

    .line 67
    .local v1, "fragment":Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->setShowsDialog(Z)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->setCancelable(Z)V

    .line 87
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 75
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0898

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a0899

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 108
    new-instance v0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;-><init>(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 95
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->mOriginalOrientation:I

    .line 96
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 102
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$FrpDialog;->mOriginalOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 103
    return-void
.end method
