.class Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;
.super Ljava/lang/Object;
.source "HoldAndHoldCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    iget-object v0, v0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshotProxy()V

    .line 97
    return-void
.end method
