.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "HoldFourCornerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .line 144
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 150
    return-void
.end method
