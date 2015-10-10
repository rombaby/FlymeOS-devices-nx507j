.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;
.super Ljava/lang/Object;
.source "MoKeeExtrasFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->confirmDeleteAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$1000(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->onPauseDownload(Landroid/content/SharedPreferences;)V

    .line 366
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->deleteOldUpdates()Z
    invoke-static {v0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$1100(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Z

    .line 367
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->extrasLayout()V
    invoke-static {v0}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$500(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    .line 368
    return-void
.end method
