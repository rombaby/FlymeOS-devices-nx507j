.class final Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 684
    .local v1, "seId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 685
    .local v0, "powerState":I
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    invoke-direct {v2, v1, v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 690
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    return-object v0
.end method