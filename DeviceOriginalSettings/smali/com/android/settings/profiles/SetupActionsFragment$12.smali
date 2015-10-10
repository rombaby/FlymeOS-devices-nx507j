.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestVolumeDialog(ILmokee/profiles/StreamSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

.field final synthetic val$override:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;

.field final synthetic val$streamSettings:Lmokee/profiles/StreamSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lmokee/profiles/StreamSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lmokee/profiles/StreamSettings;

    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$override:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 866
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 867
    .local v0, "value":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lmokee/profiles/StreamSettings;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$override:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lmokee/profiles/StreamSettings;->setOverride(Z)V

    .line 868
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lmokee/profiles/StreamSettings;

    invoke-virtual {v1, v0}, Lmokee/profiles/StreamSettings;->setValue(I)V

    .line 869
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->val$streamSettings:Lmokee/profiles/StreamSettings;

    invoke-virtual {v1, v2}, Lmokee/app/Profile;->setStreamSettings(Lmokee/profiles/StreamSettings;)V

    .line 870
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 871
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 872
    return-void
.end method
