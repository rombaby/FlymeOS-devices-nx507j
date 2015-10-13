.class Lcom/android/server/notification/NotificationBlackWhiteList$1;
.super Landroid/os/Handler;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationBlackWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationBlackWhiteList;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationBlackWhiteList;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/server/notification/NotificationBlackWhiteList$1;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$1;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # invokes: Lcom/android/server/notification/NotificationBlackWhiteList;->handleNotifyDbChange()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$000(Lcom/android/server/notification/NotificationBlackWhiteList;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
