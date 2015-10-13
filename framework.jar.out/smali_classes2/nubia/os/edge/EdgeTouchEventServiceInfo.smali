.class public Lnubia/os/edge/EdgeTouchEventServiceInfo;
.super Ljava/lang/Object;
.source "EdgeTouchEventServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "nubia.edge.touch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "nubia.edge.touch"

    return-object v0
.end method

.method public getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lnubia/os/edge/EdgeTouchEventManager;->getInstance()Lnubia/os/edge/EdgeTouchEventManager;

    move-result-object v0

    return-object v0
.end method
