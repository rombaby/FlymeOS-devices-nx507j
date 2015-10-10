.class Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 1031
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v0, v1}, Lmokee/app/ProfileManager;->addProfile(Lmokee/app/Profile;)V

    .line 1036
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1037
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->finishFragment()V

    .line 1038
    return-void
.end method
