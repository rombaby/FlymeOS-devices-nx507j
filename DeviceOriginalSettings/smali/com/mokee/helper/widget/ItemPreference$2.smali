.class Lcom/mokee/helper/widget/ItemPreference$2;
.super Ljava/lang/Object;
.source "ItemPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/widget/ItemPreference;->confirmDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/widget/ItemPreference;


# direct methods
.method constructor <init>(Lcom/mokee/helper/widget/ItemPreference;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mokee/helper/widget/ItemPreference$2;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$2;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$2;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference$2;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    invoke-interface {v0, v1}, Lcom/mokee/helper/widget/ItemPreference$OnActionListener;->onDeleteUpdate(Lcom/mokee/helper/widget/ItemPreference;)V

    .line 165
    :cond_0
    return-void
.end method
