.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    new-instance v1, Lmokee/profiles/LockSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$300()[I

    move-result-object v2

    aget v2, v2, p2

    invoke-direct {v1, v2}, Lmokee/profiles/LockSettings;-><init>(I)V

    invoke-virtual {v0, v1}, Lmokee/app/Profile;->setScreenLockMode(Lmokee/profiles/LockSettings;)V

    .line 605
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 606
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 607
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 608
    return-void
.end method
