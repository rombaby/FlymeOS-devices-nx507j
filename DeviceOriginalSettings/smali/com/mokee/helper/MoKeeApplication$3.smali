.class Lcom/mokee/helper/MoKeeApplication$3;
.super Ljava/lang/Object;
.source "MoKeeApplication.java"

# interfaces
.implements Lcn/jpush/android/api/TagAliasCallback;


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
    .line 133
    iput-object p1, p0, Lcom/mokee/helper/MoKeeApplication$3;->this$0:Lcom/mokee/helper/MoKeeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gotResult(ILjava/lang/String;Ljava/util/Set;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p3, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sparse-switch p1, :sswitch_data_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "logs":Ljava/lang/String;
    const-string v1, "MoKeeApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 140
    .end local v0    # "logs":Ljava/lang/String;
    :sswitch_0
    const-string v0, "Set tag success"

    .line 141
    .restart local v0    # "logs":Ljava/lang/String;
    iget-object v1, p0, Lcom/mokee/helper/MoKeeApplication$3;->this$0:Lcom/mokee/helper/MoKeeApplication;

    # getter for: Lcom/mokee/helper/MoKeeApplication;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/mokee/helper/MoKeeApplication;->access$200(Lcom/mokee/helper/MoKeeApplication;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_tags"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    const-string v1, "MoKeeApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "logs":Ljava/lang/String;
    :sswitch_1
    const-string v0, "Failed to set tags due to timeout. Try again after 60s."

    .line 146
    .restart local v0    # "logs":Ljava/lang/String;
    const-string v1, "MoKeeApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/mokee/helper/MoKeeApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/mokee/helper/MoKeeApplication$3;->this$0:Lcom/mokee/helper/MoKeeApplication;

    # getter for: Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mokee/helper/MoKeeApplication;->access$300(Lcom/mokee/helper/MoKeeApplication;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/mokee/helper/MoKeeApplication$3;->this$0:Lcom/mokee/helper/MoKeeApplication;

    # getter for: Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mokee/helper/MoKeeApplication;->access$300(Lcom/mokee/helper/MoKeeApplication;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 151
    :cond_0
    const-string v1, "MoKeeApplication"

    const-string v2, "No network"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1772 -> :sswitch_1
    .end sparse-switch
.end method
