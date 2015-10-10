.class Lcom/mokee/helper/MoKeeApplication$1;
.super Landroid/os/Handler;
.source "MoKeeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/MoKeeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/MoKeeApplication;


# direct methods
.method constructor <init>(Lcom/mokee/helper/MoKeeApplication;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mokee/helper/MoKeeApplication$1;->this$0:Lcom/mokee/helper/MoKeeApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 73
    const-string v0, "MoKeeApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled msg - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const-string v0, "MoKeeApplication"

    const-string v1, "Set alias in handler."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication$1;->this$0:Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v0}, Lcom/mokee/helper/MoKeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/mokee/helper/MoKeeApplication$1;->this$0:Lcom/mokee/helper/MoKeeApplication;

    # getter for: Lcom/mokee/helper/MoKeeApplication;->mAliasCallback:Lcn/jpush/android/api/TagAliasCallback;
    invoke-static {v2}, Lcom/mokee/helper/MoKeeApplication;->access$000(Lcom/mokee/helper/MoKeeApplication;)Lcn/jpush/android/api/TagAliasCallback;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    goto :goto_0

    .line 68
    :pswitch_1
    const-string v0, "MoKeeApplication"

    const-string v1, "Set tags in handler."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication$1;->this$0:Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v0}, Lcom/mokee/helper/MoKeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/mokee/helper/MoKeeApplication$1;->this$0:Lcom/mokee/helper/MoKeeApplication;

    # getter for: Lcom/mokee/helper/MoKeeApplication;->mTagsCallback:Lcn/jpush/android/api/TagAliasCallback;
    invoke-static {v2}, Lcom/mokee/helper/MoKeeApplication;->access$100(Lcom/mokee/helper/MoKeeApplication;)Lcn/jpush/android/api/TagAliasCallback;

    move-result-object v2

    invoke-static {v1, v3, v0, v2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
