.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$7;
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


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$7;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$7;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mStartUpdateVisible:Z
    invoke-static {v0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1202(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Z)Z

    .line 808
    return-void
.end method
