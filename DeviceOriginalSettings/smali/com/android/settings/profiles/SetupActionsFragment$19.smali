.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestProfileName()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    const-string v2, "input_method"

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->access$600(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 978
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;->val$entry:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 979
    return-void
.end method
