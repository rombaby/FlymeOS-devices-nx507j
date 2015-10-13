.class public Lnubia/widget/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/DatePickerDialog$1;,
        Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;,
        Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;,
        Lnubia/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lnubia/widget/DatePickerView;

.field private mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

.field private mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnubia/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lnubia/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 42
    iput-object p3, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 45
    const v3, 0x30c0006

    invoke-virtual {p0, v3}, Lnubia/widget/DatePickerDialog;->setTitle(I)V

    .line 46
    invoke-virtual {p0}, Lnubia/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    .local v1, "themeContext":Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x303000d

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lnubia/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 52
    const v3, 0x30d0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/DatePickerView;

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    .line 55
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    if-nez v3, :cond_0

    .line 56
    new-instance v3, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-direct {v3, p0, v5}, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    .line 59
    :cond_0
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget-object v4, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v3, p4, p5, p6, v4}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 61
    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    if-nez v3, :cond_1

    .line 62
    new-instance v3, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-direct {v3, p0, v5}, Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 65
    :cond_1
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lnubia/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/DatePickerDialog;->mOnClickListener:Lnubia/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lnubia/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnubia/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lnubia/widget/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 34
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lnubia/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILnubia/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 35
    return-void
.end method

.method static synthetic access$200(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    return-object v0
.end method

.method static synthetic access$400(Lnubia/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerDialog;

    .prologue
    .line 14
    invoke-direct {p0}, Lnubia/widget/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->clearFocus()V

    .line 83
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mCallBack:Lnubia/widget/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    iget-object v2, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v2}, Lnubia/widget/DatePickerView;->getYear()I

    move-result v2

    iget-object v3, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v3}, Lnubia/widget/DatePickerView;->getMonth()I

    move-result v3

    iget-object v4, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v4}, Lnubia/widget/DatePickerView;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lnubia/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lnubia/widget/DatePickerView;III)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public getDatePicker()Lnubia/widget/DatePickerView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    const-string v1, "PICKER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/DatePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 105
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v2}, Lnubia/widget/DatePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 91
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;

    invoke-virtual {v0, p1, p2, p3}, Lnubia/widget/DatePickerView;->updateDate(III)V

    .line 78
    return-void
.end method
