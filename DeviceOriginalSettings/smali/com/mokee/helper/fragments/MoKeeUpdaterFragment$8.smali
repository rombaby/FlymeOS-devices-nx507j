.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$8;
.super Ljava/lang/Object;
.source "MoKeeUpdaterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

.field final synthetic val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Lcom/mokee/helper/misc/ItemInfo;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$8;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    iput-object p2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$8;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 798
    :try_start_0
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$400()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$8;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mokee/helper/utils/Utils;->triggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to reboot into recovery mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$400()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f0a008b

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    const v2, 0x7f090061

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0
.end method
