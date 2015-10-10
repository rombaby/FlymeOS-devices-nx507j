.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitEditorFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2045
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 4
    .param p0, "parent"    # Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .prologue
    .line 2049
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2058
    :goto_0
    return-void

    .line 2051
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2052
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "template"

    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$2900(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2054
    new-instance v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;

    invoke-direct {v1}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;-><init>()V

    .line 2055
    .local v1, "dialog":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2056
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2057
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "limitEditor"

    invoke-virtual {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2062
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 2063
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    .line 2064
    .local v5, "target":Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
    # getter for: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->mPolicyEditor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;
    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$3000(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    move-result-object v3

    .line 2066
    .local v3, "editor":Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2067
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2069
    .local v8, "dialogInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04003e

    const/4 v1, 0x0

    const/4 v14, 0x0

    invoke-virtual {v8, v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 2070
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f11009e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    .line 2072
    .local v2, "bytesPicker":Landroid/widget/NumberPicker;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2073
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v12

    .line 2074
    .local v12, "warningBytes":J
    invoke-virtual {v3, v4}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v10

    .line 2076
    .local v10, "limitBytes":J
    const v0, 0x7fffffff

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 2077
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 2078
    const-wide/32 v0, 0x100000

    div-long v0, v12, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 2082
    :goto_0
    const-wide/32 v0, 0x100000

    div-long v0, v10, v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 2083
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 2085
    const v0, 0x7f0a0c9d

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2086
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2088
    const v14, 0x7f0a0c9b

    new-instance v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$LimitEditorFragment;Landroid/widget/NumberPicker;Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V

    invoke-virtual {v6, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2101
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 2080
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0
.end method
