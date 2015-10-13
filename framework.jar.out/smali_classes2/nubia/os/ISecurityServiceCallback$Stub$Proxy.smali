.class Lnubia/os/ISecurityServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISecurityServiceCallback.java"

# interfaces
.implements Lnubia/os/ISecurityServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/ISecurityServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lnubia/os/ISecurityServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 56
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnubia/os/ISecurityServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "nubia.os.ISecurityServiceCallback"

    return-object v0
.end method
