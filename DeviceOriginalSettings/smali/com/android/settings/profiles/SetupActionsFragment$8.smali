.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestRingModeDialog(Lmokee/profiles/RingModeSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lmokee/profiles/RingModeSettings;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/RingModeSettings;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 728
    packed-switch p2, :pswitch_data_0

    .line 745
    :goto_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    invoke-virtual {v0, v1}, Lmokee/app/Profile;->setRingMode(Lmokee/profiles/RingModeSettings;)V

    .line 746
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 747
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 748
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 749
    return-void

    .line 730
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    invoke-virtual {v0, v2}, Lmokee/profiles/RingModeSettings;->setOverride(Z)V

    .line 731
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$values:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lmokee/profiles/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    invoke-virtual {v0, v2}, Lmokee/profiles/RingModeSettings;->setOverride(Z)V

    .line 735
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$values:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmokee/profiles/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    invoke-virtual {v0, v2}, Lmokee/profiles/RingModeSettings;->setOverride(Z)V

    .line 739
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$values:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmokee/profiles/RingModeSettings;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;->val$setting:Lmokee/profiles/RingModeSettings;

    invoke-virtual {v0, v3}, Lmokee/profiles/RingModeSettings;->setOverride(Z)V

    goto :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
