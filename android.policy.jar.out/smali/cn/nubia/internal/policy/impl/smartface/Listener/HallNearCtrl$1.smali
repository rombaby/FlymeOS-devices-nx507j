.class Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl$1;
.super Ljava/lang/Object;
.source "HallNearCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;Z)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;

    iput-boolean p2, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;

    iget-boolean v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl$1;->val$enable:Z

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;->setSmartFaceDisplayFlag(Z)V

    .line 55
    return-void
.end method
