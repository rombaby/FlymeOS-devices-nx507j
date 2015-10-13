.class Lnubia/widget/DatePickerView$1;
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
    .line 64
    iput-object p1, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lnubia/widget/WheelView;II)V
    .locals 1
    .param p1, "wheelView"    # Lnubia/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    # setter for: Lnubia/widget/DatePickerView;->mYear:I
    invoke-static {v0, p3}, Lnubia/widget/DatePickerView;->access$002(Lnubia/widget/DatePickerView;I)I

    .line 70
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->adjustMaxDay()V

    .line 71
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 72
    iget-object v0, p0, Lnubia/widget/DatePickerView$1;->this$0:Lnubia/widget/DatePickerView;

    invoke-virtual {v0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 73
    return-void
.end method
