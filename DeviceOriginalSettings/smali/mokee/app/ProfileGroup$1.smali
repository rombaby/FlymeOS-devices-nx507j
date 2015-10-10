.class final Lmokee/app/ProfileGroup$1;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/ProfileGroup;
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
        "Lmokee/app/ProfileGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lmokee/app/ProfileGroup$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/app/ProfileGroup;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/app/ProfileGroup;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 65
    new-instance v0, Lmokee/app/ProfileGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/app/ProfileGroup;-><init>(Landroid/os/Parcel;Lmokee/app/ProfileGroup$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lmokee/app/ProfileGroup$1;->newArray(I)[Lmokee/app/ProfileGroup;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/app/ProfileGroup;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 70
    new-array v0, p1, [Lmokee/app/ProfileGroup;

    return-object v0
.end method
