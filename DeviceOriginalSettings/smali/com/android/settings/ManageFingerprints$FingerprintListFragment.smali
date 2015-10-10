.class public Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;
.super Landroid/app/Fragment;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintListFragment"
.end annotation


# instance fields
.field private mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

.field private mFingerList:Landroid/widget/ListView;

.field private mFpManager:Landroid/service/fingerprint/FingerprintManager;

.field private mManageFingerprintsTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->addFinger()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;
    .param p1, "x1"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->updateTitle()V

    return-void
.end method

.method private addFinger()V
    .locals 4

    .prologue
    .line 222
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 223
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;->newInstance()Lcom/flyme/deviceoriginalsettings/ManageFingerprints$MaxNumFingerprintsDialog;

    move-result-object v0

    .line 224
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MaxFingers"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 229
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getEnrollmentIntent()Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 4
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getNumFingerprints()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 270
    .local v0, "canDelete":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;->newInstance(Landroid/hardware/fingerprint/Fingerprint;Z)Lcom/flyme/deviceoriginalsettings/ManageFingerprints$RenameAndDeleteFragment;

    move-result-object v1

    .line 272
    .local v1, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "Rename"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 273
    return-void

    .line 269
    .end local v0    # "canDelete":Z
    .end local v1    # "dialogFragment":Landroid/app/DialogFragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startListening()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$2;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)V

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManager;->startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V

    .line 251
    return-void
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mManageFingerprintsTitle:Landroid/widget/TextView;

    const v1, 0x7f0a03fb

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getNumFingerprints()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method


# virtual methods
.method public doDelete(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/fingerprint/FingerprintManager;->remove(I)V

    .line 266
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method public doRename(Landroid/hardware/fingerprint/Fingerprint;Ljava/lang/String;)V
    .locals 2
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/service/fingerprint/FingerprintManager;->setFingerprintName(ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method

.method protected getEnrollmentIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f040068

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 278
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Fragment contained in wrong activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    .line 178
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->startListening()V

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getLayoutResource()I

    move-result v1

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f110111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFingerList:Landroid/widget/ListView;

    .line 186
    new-instance v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    .line 187
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFingerList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFingerList:Landroid/widget/ListView;

    const v2, 0x7f040069

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFingerList:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 190
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFingerList:Landroid/widget/ListView;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    const v1, 0x7f110110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mManageFingerprintsTitle:Landroid/widget/TextView;

    .line 202
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->updateTitle()V

    .line 203
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->stopListening()V

    .line 209
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 210
    return-void
.end method
