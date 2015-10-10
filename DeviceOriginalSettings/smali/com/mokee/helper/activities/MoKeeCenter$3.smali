.class Lcom/mokee/helper/activities/MoKeeCenter$3;
.super Ljava/lang/Object;
.source "MoKeeCenter.java"

# interfaces
.implements Lmokee/support/widget/snackbar/listeners/ActionClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/activities/MoKeeCenter;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/activities/MoKeeCenter;


# direct methods
.method constructor <init>(Lcom/mokee/helper/activities/MoKeeCenter;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/mokee/helper/activities/MoKeeCenter$3;->this$0:Lcom/mokee/helper/activities/MoKeeCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionClicked(Lmokee/support/widget/snackbar/Snackbar;)V
    .locals 2
    .param p1, "snackbar"    # Lmokee/support/widget/snackbar/Snackbar;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter$3;->this$0:Lcom/mokee/helper/activities/MoKeeCenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V

    .line 212
    return-void
.end method
