.class final Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$GarbageCleanServiceCallbackDelegate;
.super Lnubia/os/ISecurityServiceCallback$Stub;
.source "GarbageCleanServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GarbageCleanServiceCallbackDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;


# direct methods
.method private constructor <init>(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$GarbageCleanServiceCallbackDelegate;->this$0:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    invoke-direct {p0}, Lnubia/os/ISecurityServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;
    .param p2, "x1"    # Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$GarbageCleanServiceCallbackDelegate;-><init>(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;)V

    return-void
.end method
