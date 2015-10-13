.class Lcn/nubia/server/A2iService$5;
.super Ljava/lang/Object;
.source "A2iService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/A2iService;->handleVoiceTrigger(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/A2iService;


# direct methods
.method constructor <init>(Lcn/nubia/server/A2iService;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcn/nubia/server/A2iService$5;->this$0:Lcn/nubia/server/A2iService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcn/nubia/server/A2iService$5;->this$0:Lcn/nubia/server/A2iService;

    # invokes: Lcn/nubia/server/A2iService;->showA2iToast()V
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$1200(Lcn/nubia/server/A2iService;)V

    .line 381
    return-void
.end method
