.class Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;
.super Ljava/lang/Object;
.source "GarbageCleanServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    invoke-static {p2}, Lnubia/os/ISecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISecurityService;

    move-result-object v1

    # setter for: Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->access$002(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;Lnubia/os/ISecurityService;)Lnubia/os/ISecurityService;

    .line 30
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    # getter for: Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->access$000(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;)Lnubia/os/ISecurityService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "GarbageCleanServiceDelegate"

    const-string v1, "Connected ISecurityService error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    new-instance v1, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$GarbageCleanServiceCallbackDelegate;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$GarbageCleanServiceCallbackDelegate;-><init>(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->setServiceCallback(Lnubia/os/ISecurityServiceCallback;)V

    .line 35
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;
    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->access$002(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;Lnubia/os/ISecurityService;)Lnubia/os/ISecurityService;

    .line 40
    const-string v0, "GarbageCleanServiceDelegate"

    const-string v1, "GarbageCleanService Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
