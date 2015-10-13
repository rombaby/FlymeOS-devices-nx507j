.class public abstract Lnubia/os/IBreathingLightManager$Stub;
.super Landroid/os/Binder;
.source "IBreathingLightManager.java"

# interfaces
.implements Lnubia/os/IBreathingLightManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/IBreathingLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IBreathingLightManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nubia.os.IBreathingLightManager"

.field static final TRANSACTION_requestBreathingLight:I = 0x1

.field static final TRANSACTION_requestBreathingLightExt:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "nubia.os.IBreathingLightManager"

    invoke-virtual {p0, p0, v0}, Lnubia/os/IBreathingLightManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnubia/os/IBreathingLightManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "nubia.os.IBreathingLightManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnubia/os/IBreathingLightManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lnubia/os/IBreathingLightManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lnubia/os/IBreathingLightManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lnubia/os/IBreathingLightManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "nubia.os.IBreathingLightManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "nubia.os.IBreathingLightManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lnubia/os/IBreathingLightManager$Stub;->requestBreathingLight(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 53
    goto :goto_0

    .line 57
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "nubia.os.IBreathingLightManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 65
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 67
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lnubia/os/IBreathingLightManager$Stub;->requestBreathingLightExt(IIIII)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 70
    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
