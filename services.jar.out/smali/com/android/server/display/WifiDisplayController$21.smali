.class Lcom/android/server/display/WifiDisplayController$21;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestStartScanScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$21;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    .line 1087
    :cond_0
    return-void
.end method
