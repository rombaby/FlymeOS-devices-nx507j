.class Lnubia/widget/DatePickerView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/DatePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnubia/widget/DatePickerView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final sDay:I

.field final sMonth:I

.field final sYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lnubia/widget/DatePickerView$SavedState$1;

    invoke-direct {v0}, Lnubia/widget/DatePickerView$SavedState$1;-><init>()V

    sput-object v0, Lnubia/widget/DatePickerView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerView$SavedState;->sYear:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerView$SavedState;->sMonth:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnubia/widget/DatePickerView$SavedState;->sDay:I

    .line 234
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;III)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 224
    iput p2, p0, Lnubia/widget/DatePickerView$SavedState;->sYear:I

    .line 225
    iput p3, p0, Lnubia/widget/DatePickerView$SavedState;->sMonth:I

    .line 226
    iput p4, p0, Lnubia/widget/DatePickerView$SavedState;->sDay:I

    .line 227
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    iget v0, p0, Lnubia/widget/DatePickerView$SavedState;->sYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lnubia/widget/DatePickerView$SavedState;->sMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lnubia/widget/DatePickerView$SavedState;->sDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    return-void
.end method
