.class Lnubia/widget/DatePickerView$2;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lnubia/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/DatePickerView;


# direct methods
.method constructor <init>(Lnubia/widget/DatePickerView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lnubia/widget/DatePickerView$2;->this$0:Lnubia/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnubia/widget/WheelView;II)V
    .locals 2
    .param p1, "wheelView"    # Lnubia/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lnubia/widget/DatePickerView$2;->this$0:Lnubia/widget/DatePickerView;

    add-int/lit8 v1, p3, -0x1

    # setter for: Lnubia/widget/DatePickerView;->mMonth:I
    invoke-static {v0, v1}, Lnubia/widget/DatePickerView;->access$102(Lnubia/widget/DatePickerView;I)I

    .line 97
    iget-object v0, p0, Lnubia/widget/DatePickerView$2;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->adjustMaxDay()V

    .line 98
    iget-object v0, p0, Lnubia/widget/DatePickerView$2;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 99
    iget-object v0, p0, Lnubia/widget/DatePickerView$2;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 100
    return-void
.end method
