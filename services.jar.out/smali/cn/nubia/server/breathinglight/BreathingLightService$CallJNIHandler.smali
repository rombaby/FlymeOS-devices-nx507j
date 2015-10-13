.class Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;
.super Landroid/os/Handler;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallJNIHandler"
.end annotation


# instance fields
.field private mPocessing:Z

.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 302
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 303
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 305
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 309
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 311
    :pswitch_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    .line 312
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 313
    .local v1, "data":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 314
    const-string v5, "light"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 315
    .local v3, "lights":I
    const-string v5, "mode"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 316
    .local v4, "mode":I
    const-string v5, "frequency"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 317
    .local v2, "frequency":I
    const-string v5, "color"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 318
    .local v0, "color":I
    iget-object v5, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->this$0:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v5, v3, v4, v2, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightJNI(IIII)V

    .line 320
    .end local v0    # "color":I
    .end local v2    # "frequency":I
    .end local v3    # "lights":I
    .end local v4    # "mode":I
    :cond_0
    iput-boolean v7, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public isPocessing()Z
    .locals 3

    .prologue
    .line 325
    const-string v0, "BreathingLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallJNIHandler isPocessing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->mPocessing:Z

    return v0
.end method
