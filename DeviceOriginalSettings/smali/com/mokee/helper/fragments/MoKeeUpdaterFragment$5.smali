.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;
.super Ljava/lang/Object;
.source "MoKeeUpdaterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->confirmDeleteAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->onPauseDownload(Landroid/content/SharedPreferences;)V

    .line 597
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->deleteOldUpdates()Z
    invoke-static {v0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1100(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Z

    .line 598
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLayout()V
    invoke-static {v0}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$500(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    .line 599
    return-void
.end method
