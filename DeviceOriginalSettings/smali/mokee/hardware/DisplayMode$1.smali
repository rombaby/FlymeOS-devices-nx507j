.class final Lmokee/hardware/DisplayMode$1;
.super Ljava/lang/Object;
.source "DisplayMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/hardware/DisplayMode;
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
        "Lmokee/hardware/DisplayMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lmokee/hardware/DisplayMode$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/hardware/DisplayMode;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    new-instance v0, Lmokee/hardware/DisplayMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/hardware/DisplayMode;-><init>(Landroid/os/Parcel;Lmokee/hardware/DisplayMode$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lmokee/hardware/DisplayMode$1;->newArray(I)[Lmokee/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/hardware/DisplayMode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 113
    new-array v0, p1, [Lmokee/hardware/DisplayMode;

    return-object v0
.end method
