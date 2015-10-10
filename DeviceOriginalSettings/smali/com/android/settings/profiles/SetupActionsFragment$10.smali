.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Lmokee/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lmokee/profiles/ConnectionSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/ConnectionSettings;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->val$setting:Lmokee/profiles/ConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 820
    packed-switch p2, :pswitch_data_0

    .line 825
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->val$setting:Lmokee/profiles/ConnectionSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmokee/profiles/ConnectionSettings;->setOverride(Z)V

    .line 826
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->val$setting:Lmokee/profiles/ConnectionSettings;

    invoke-virtual {v0, p2}, Lmokee/profiles/ConnectionSettings;->setValue(I)V

    .line 828
    :goto_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->val$setting:Lmokee/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 829
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 830
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 831
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 832
    return-void

    .line 822
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;->val$setting:Lmokee/profiles/ConnectionSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmokee/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
