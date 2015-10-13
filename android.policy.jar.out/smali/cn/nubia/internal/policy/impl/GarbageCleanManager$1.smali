.class Lcn/nubia/internal/policy/impl/GarbageCleanManager$1;
.super Landroid/os/Handler;
.source "GarbageCleanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/GarbageCleanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/GarbageCleanManager;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/GarbageCleanManager;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager$1;->this$0:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager$1;->this$0:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    # invokes: Lcn/nubia/internal/policy/impl/GarbageCleanManager;->handleShow()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->access$000(Lcn/nubia/internal/policy/impl/GarbageCleanManager;)V

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager$1;->this$0:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    # invokes: Lcn/nubia/internal/policy/impl/GarbageCleanManager;->handleDismiss()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->access$100(Lcn/nubia/internal/policy/impl/GarbageCleanManager;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
