.class Lcn/nubia/server/HapticsService$1;
.super Landroid/os/UEventObserver;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/HapticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/HapticsService;


# direct methods
.method constructor <init>(Lcn/nubia/server/HapticsService;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsStatus:I
    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->access$002(Lcn/nubia/server/HapticsService;I)I

    .line 125
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mHapticsStatus:I
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->access$000(Lcn/nubia/server/HapticsService;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->access$100(Lcn/nubia/server/HapticsService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mHapticsMode:I
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->access$200(Lcn/nubia/server/HapticsService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mSeq:[B
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->access$300(Lcn/nubia/server/HapticsService;)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ti/Haptic;->playEffectSequence([BI)V

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    iget-object v1, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mHapticsStatus:I
    invoke-static {v1}, Lcn/nubia/server/HapticsService;->access$000(Lcn/nubia/server/HapticsService;)I

    move-result v1

    # setter for: Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I
    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->access$102(Lcn/nubia/server/HapticsService;I)I

    .line 142
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mHapticsMode:I
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->access$200(Lcn/nubia/server/HapticsService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    const/4 v1, -0x3

    # &= operator for: Lcn/nubia/server/HapticsService;->mHapticsMode:I
    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->access$272(Lcn/nubia/server/HapticsService;I)I

    goto :goto_0

    .line 138
    :cond_2
    const-string v0, "HapticsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "haptics state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/HapticsService$1;->this$0:Lcn/nubia/server/HapticsService;

    # getter for: Lcn/nubia/server/HapticsService;->mHapticsStatus:I
    invoke-static {v2}, Lcn/nubia/server/HapticsService;->access$000(Lcn/nubia/server/HapticsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
