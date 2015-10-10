.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;
.super Ljava/lang/Object;
.source "MoKeeExtrasFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->onStopDownload(Lcom/mokee/helper/widget/ItemPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

.field final synthetic val$pref:Lcom/mokee/helper/widget/ItemPreference;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    iput-object p2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;->val$pref:Lcom/mokee/helper/widget/ItemPreference;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 510
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$5;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$1000(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->onPauseDownload(Landroid/content/SharedPreferences;)V

    .line 511
    return-void
.end method
