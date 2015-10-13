.class Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;
.super Lcom/android/internal/util/State;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SCreenOffState"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 87
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOn()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 92
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMissEvent()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 96
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCharging()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 100
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;->this$0:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCharged()V
    invoke-static {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->access$500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    goto :goto_0

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_3
    .end sparse-switch
.end method
