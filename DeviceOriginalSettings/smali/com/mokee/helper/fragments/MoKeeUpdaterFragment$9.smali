.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;
.super Ljava/lang/Object;
.source "MoKeeUpdaterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;I)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    iput p2, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 873
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    iget v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$9;->val$value:I

    # invokes: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateUpdatesType(I)V
    invoke-static {v0, v1}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1400(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;I)V

    .line 874
    return-void
.end method
