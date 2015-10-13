.class Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$2;
.super Landroid/os/Handler;
.source "ReceiverMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$2;->this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 72
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$2;->this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$2;->this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    # invokes: Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->handleSmartFaceViewStateChanged()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->access$400(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
