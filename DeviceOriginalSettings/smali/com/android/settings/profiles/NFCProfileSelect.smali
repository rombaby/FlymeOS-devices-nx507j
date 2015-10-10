.class public Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;
.super Landroid/app/Activity;
.source "NFCProfileSelect.java"


# instance fields
.field private currentChoice:I

.field private mProfileManager:Lmokee/app/ProfileManager;

.field private mProfileUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->currentChoice:I

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;

    .prologue
    .line 38
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->currentChoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->currentChoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)Lmokee/app/ProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->mProfileManager:Lmokee/app/ProfileManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Lmokee/app/ProfileManager;->getInstance(Landroid/content/Context;)Lmokee/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->mProfileManager:Lmokee/app/ProfileManager;

    .line 58
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->setContentView(I)V

    .line 59
    const v0, 0x7f0a00a8

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->setTitle(I)V

    .line 61
    const v0, 0x7f110175

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$1;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROFILE_UUID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "profileUuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->mProfileUuid:Ljava/util/UUID;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->finish()V

    goto :goto_0
.end method

.method showProfileSelectionDialog()V
    .locals 6

    .prologue
    .line 82
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v4}, Lmokee/app/ProfileManager;->getProfiles()[Lmokee/app/Profile;

    move-result-object v3

    .line 83
    .local v3, "profiles":[Lmokee/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 84
    .local v2, "profileNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 85
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lmokee/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->currentChoice:I

    new-instance v5, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$2;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$2;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    const v4, 0x104000a

    new-instance v5, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$3;

    invoke-direct {v5, p0, v3}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$3;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;[Lmokee/app/Profile;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$4;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$4;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    return-void
.end method
