.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$1;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;
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
    .line 382
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$000(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    .line 386
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 387
    return-void
.end method
