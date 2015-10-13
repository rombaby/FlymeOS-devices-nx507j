.class Lcn/nubia/internal/policy/impl/SmartFaceManager$1;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleShow()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$000(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleShowLattice()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$100(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleDismiss()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$200(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 79
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleNotifyScreenOn()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$300(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 82
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    const/4 v1, 0x1

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleUpdateRotation(Z)V
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$400(Lcn/nubia/internal/policy/impl/SmartFaceManager;Z)V

    goto :goto_0

    .line 85
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleTurnOffScreen()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$500(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
