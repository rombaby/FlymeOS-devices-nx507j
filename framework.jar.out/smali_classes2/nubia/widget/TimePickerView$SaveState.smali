.class Lnubia/widget/TimePickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveState"
.end annotation


# instance fields
.field final mHour:I

.field final mMinute:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/widget/TimePickerView$SaveState;->mHour:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/widget/TimePickerView$SaveState;->mMinute:I

    .line 154
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 158
    iput p2, p0, Lnubia/widget/TimePickerView$SaveState;->mHour:I

    .line 159
    iput p3, p0, Lnubia/widget/TimePickerView$SaveState;->mMinute:I

    .line 160
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    iget v0, p0, Lnubia/widget/TimePickerView$SaveState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lnubia/widget/TimePickerView$SaveState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void
.end method
