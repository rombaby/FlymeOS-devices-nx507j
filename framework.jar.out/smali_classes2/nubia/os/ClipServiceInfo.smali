.class public Lnubia/os/ClipServiceInfo;
.super Ljava/lang/Object;
.source "ClipServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


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
    const-string v0, "nubia.clipserviceext"

    return-object v0
.end method

.method public getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lnubia/os/ClipServiceManagerExtra;->getInstance()Lnubia/os/ClipServiceManagerExtra;

    move-result-object v0

    return-object v0
.end method
