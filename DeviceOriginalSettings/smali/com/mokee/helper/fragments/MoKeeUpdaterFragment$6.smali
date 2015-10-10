.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;
.super Ljava/lang/Object;
.source "MoKeeUpdaterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->onStopDownload(Lcom/mokee/helper/widget/ItemPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

.field final synthetic val$pref:Lcom/mokee/helper/widget/ItemPreference;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    iput-object p2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 752
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_ota_check"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    invoke-virtual {v0}, Lcom/mokee/helper/widget/ItemPreference;->getItemInfo()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/helper/utils/Utils;->isNewVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    invoke-virtual {v0, v3}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 761
    :goto_0
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->onPauseDownload(Landroid/content/SharedPreferences;)V

    .line 762
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    invoke-virtual {v0, v2}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    goto :goto_0

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$6;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    invoke-virtual {v0, v3}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    goto :goto_0
.end method
