.class Lcn/nubia/server/breathinglight/BreathingLightService$2;
.super Landroid/content/BroadcastReceiver;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x64

    const/16 v9, 0x38

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    if-eqz p2, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    const-string v4, "BreathingLightService"

    const-string v5, "onReceive : ACTION_BOOT_COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted()V
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$200(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    .line 236
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    const-string v4, "BreathingLightService"

    const-string v5, "onReceive : ACTION_SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v4, v9, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 207
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 208
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$400(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->updateAutoBrightnessState(Z)V

    .line 211
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$500(Lcn/nubia/server/breathinglight/BreathingLightService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 212
    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 213
    const-string v4, "BreathingLightService"

    const-string v5, "onReceive : ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v4, v9, v6, v6, v6}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 216
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 217
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$400(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->updateAutoBrightnessState(Z)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    const-string v4, "BreathingLightService"

    const-string v5, "onReceive : ACTION_USER_PRESENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$300(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 221
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleUserPresent()V

    goto :goto_0

    .line 222
    :cond_4
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    const-string v4, "BreathingLightService"

    const-string v5, "onReceive : ACTION_BATTERY_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->isChargeSwitchEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    # getter for: Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;
    invoke-static {v4}, Lcn/nubia/server/breathinglight/BreathingLightService;->access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/server/breathinglight/MissEventObserver;->isUseingMiddleLight()Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 226
    .local v2, "plugged":I
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, "level":I
    const-string v4, "status"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 228
    .local v3, "status":I
    if-lez v2, :cond_5

    if-ne v3, v8, :cond_5

    .line 229
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v5, 0x6a

    invoke-virtual {v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto/16 :goto_0

    .line 230
    :cond_5
    if-lez v2, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    if-lt v1, v10, :cond_0

    .line 231
    :cond_6
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService$2;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v5, 0x6b

    invoke-virtual {v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto/16 :goto_0
.end method
