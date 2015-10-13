.class final Lcn/nubia/server/A2iService$BinderService;
.super Lnubia/os/IA2iManager$Stub;
.source "A2iService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/A2iService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/A2iService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/A2iService;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcn/nubia/server/A2iService$BinderService;->this$0:Lcn/nubia/server/A2iService;

    invoke-direct {p0}, Lnubia/os/IA2iManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/A2iService;Lcn/nubia/server/A2iService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/A2iService;
    .param p2, "x1"    # Lcn/nubia/server/A2iService$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$BinderService;-><init>(Lcn/nubia/server/A2iService;)V

    return-void
.end method


# virtual methods
.method public getA2iIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/server/A2iService$BinderService;->this$0:Lcn/nubia/server/A2iService;

    invoke-virtual {v0}, Lcn/nubia/server/A2iService;->getA2iIntentInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrainingResult(I)Ljava/lang/String;
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcn/nubia/server/A2iService$BinderService;->this$0:Lcn/nubia/server/A2iService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/A2iService;->getTrainingResultInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isServiceAvailable()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/server/A2iService$BinderService;->this$0:Lcn/nubia/server/A2iService;

    invoke-virtual {v0}, Lcn/nubia/server/A2iService;->isServiceAvailableInternal()Z

    move-result v0

    return v0
.end method

.method public setTrainingMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/server/A2iService$BinderService;->this$0:Lcn/nubia/server/A2iService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/A2iService;->setTrainingModeInternal(I)I

    move-result v0

    return v0
.end method
