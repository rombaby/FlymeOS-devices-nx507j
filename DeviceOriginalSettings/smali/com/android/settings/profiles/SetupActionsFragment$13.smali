.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$volumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;->val$volumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    const/4 v1, 0x0

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$500(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 882
    return-void
.end method
