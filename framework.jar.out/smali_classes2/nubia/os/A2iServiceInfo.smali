.class public Lnubia/os/A2iServiceInfo;
.super Ljava/lang/Object;
.source "A2iServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "a2i"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "a2i"

    return-object v0
.end method

.method public getServiceProxy()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lnubia/os/A2iServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/IA2iManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IA2iManager;

    move-result-object v1

    .line 24
    .local v1, "service":Lnubia/os/IA2iManager;
    new-instance v2, Lnubia/os/A2iManager;

    invoke-direct {v2, v1}, Lnubia/os/A2iManager;-><init>(Lnubia/os/IA2iManager;)V

    return-object v2
.end method
