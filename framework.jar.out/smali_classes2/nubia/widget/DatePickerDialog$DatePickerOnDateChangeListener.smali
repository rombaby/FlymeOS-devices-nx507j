.class Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lnubia/widget/DatePickerView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnDateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lnubia/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/DatePickerDialog;Lnubia/widget/DatePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/DatePickerDialog;
    .param p2, "x1"    # Lnubia/widget/DatePickerDialog$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lnubia/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lnubia/widget/DatePickerView;III)V
    .locals 2
    .param p1, "view"    # Lnubia/widget/DatePickerView;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mDatePicker:Lnubia/widget/DatePickerView;
    invoke-static {v0}, Lnubia/widget/DatePickerDialog;->access$300(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerView;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lnubia/widget/DatePickerDialog;

    # getter for: Lnubia/widget/DatePickerDialog;->mOnDateChangeListener:Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    invoke-static {v1}, Lnubia/widget/DatePickerDialog;->access$200(Lnubia/widget/DatePickerDialog;)Lnubia/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    move-result-object v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 115
    return-void
.end method
