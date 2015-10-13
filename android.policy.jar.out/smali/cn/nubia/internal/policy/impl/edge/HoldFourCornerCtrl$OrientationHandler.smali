.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;
.super Landroid/os/Handler;
.source "HoldFourCornerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .line 155
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    return-void
.end method
