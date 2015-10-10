.class Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;
.super Ljava/lang/Object;
.source "ManageFingerprints.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->addFinger()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;)Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 197
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->showRenameDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;->access$200(Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintListFragment;Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0
.end method
