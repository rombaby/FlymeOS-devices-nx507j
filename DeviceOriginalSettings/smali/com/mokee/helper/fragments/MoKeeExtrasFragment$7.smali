.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;
.super Ljava/lang/Object;
.source "MoKeeExtrasFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

.field final synthetic val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Lcom/mokee/helper/misc/ItemInfo;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    iput-object p2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 546
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ItemInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/mokee/helper/utils/Utils;->triggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$1300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to reboot into recovery mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f0a008b

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v2

    invoke-static {v2}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mokee/helper/utils/Utils;->makeExtraFolder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->val$itemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$7;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-virtual {v2, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
