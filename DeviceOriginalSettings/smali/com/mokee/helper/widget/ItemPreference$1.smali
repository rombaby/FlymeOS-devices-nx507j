.class Lcom/mokee/helper/widget/ItemPreference$1;
.super Ljava/lang/Object;
.source "ItemPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/widget/ItemPreference;
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
    .line 75
    iput-object p1, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mStyle:I
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$100(Lcom/mokee/helper/widget/ItemPreference;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    invoke-interface {v0, v1}, Lcom/mokee/helper/widget/ItemPreference$OnActionListener;->onStartDownload(Lcom/mokee/helper/widget/ItemPreference;)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    invoke-interface {v0, v1}, Lcom/mokee/helper/widget/ItemPreference$OnActionListener;->onStartUpdate(Lcom/mokee/helper/widget/ItemPreference;)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    # getter for: Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    invoke-static {v0}, Lcom/mokee/helper/widget/ItemPreference;->access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference$1;->this$0:Lcom/mokee/helper/widget/ItemPreference;

    invoke-interface {v0, v1}, Lcom/mokee/helper/widget/ItemPreference$OnActionListener;->onStopDownload(Lcom/mokee/helper/widget/ItemPreference;)V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
