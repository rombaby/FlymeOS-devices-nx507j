.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestBrightnessDialog(Lmokee/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

.field final synthetic val$brightnessSettings:Lmokee/profiles/BrightnessSettings;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lmokee/profiles/BrightnessSettings;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lmokee/profiles/BrightnessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 914
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 915
    .local v0, "value":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lmokee/profiles/BrightnessSettings;

    invoke-virtual {v1, v0}, Lmokee/profiles/BrightnessSettings;->setValue(I)V

    .line 916
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->val$brightnessSettings:Lmokee/profiles/BrightnessSettings;

    invoke-virtual {v1, v2}, Lmokee/app/Profile;->setBrightness(Lmokee/profiles/BrightnessSettings;)V

    .line 917
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 918
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 919
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 920
    return-void
.end method
