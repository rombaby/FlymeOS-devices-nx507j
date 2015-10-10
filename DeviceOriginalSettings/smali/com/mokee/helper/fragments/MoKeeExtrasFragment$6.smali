.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$6;
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


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$6;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$6;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mStartUpdateVisible:Z
    invoke-static {v0, v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$1202(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Z)Z

    .line 567
    return-void
.end method
