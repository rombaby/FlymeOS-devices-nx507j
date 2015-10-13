.class public Lnubia/widget/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/DatePickerView$SavedState;,
        Lnubia/widget/DatePickerView$OnDateChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2


# instance fields
.field private mDay:I

.field private mDayView:Lnubia/widget/WheelView;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMaxDayOfMonth:I

.field private mMonth:I

.field private mMonthView:Lnubia/widget/WheelView;

.field private mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

.field private mYear:I

.field private mYearView:Lnubia/widget/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lnubia/widget/DatePickerView;->mLinePaint:Landroid/graphics/Paint;

    .line 53
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x309000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 55
    .local v5, "pressedTextColor":I
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 58
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x303000c

    invoke-virtual {v3, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    invoke-virtual {p0, v9}, Lnubia/widget/DatePickerView;->setBackgroundColor(I)V

    .line 61
    const v6, 0x30d0003

    invoke-virtual {p0, v6}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnubia/widget/WheelView;

    iput-object v6, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    .line 62
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    const/16 v7, 0x7b2

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 63
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    const/16 v7, 0x7f5

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 64
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    new-instance v7, Lnubia/widget/DatePickerView$1;

    invoke-direct {v7, p0}, Lnubia/widget/DatePickerView$1;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 76
    const v6, 0x30d0004

    invoke-virtual {p0, v6}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnubia/widget/WheelView;

    iput-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    .line 77
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    .line 78
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 79
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "months":[Ljava/lang/String;
    aget-object v6, v4, v9

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 82
    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v6, v8}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 85
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v6, v10}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 91
    .end local v2    # "i":I
    :goto_1
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    new-instance v7, Lnubia/widget/DatePickerView$2;

    invoke-direct {v7, p0}, Lnubia/widget/DatePickerView$2;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 103
    const v6, 0x30d0005

    invoke-virtual {p0, v6}, Lnubia/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnubia/widget/WheelView;

    iput-object v6, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    .line 104
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-static {}, Lnubia/widget/WheelView;->getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setFormatter(Lnubia/widget/WheelView$Formatter;)V

    .line 105
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    new-instance v7, Lnubia/widget/DatePickerView$3;

    invoke-direct {v7, p0}, Lnubia/widget/DatePickerView$3;-><init>(Lnubia/widget/DatePickerView;)V

    invoke-virtual {v6, v7}, Lnubia/widget/WheelView;->setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lnubia/widget/DatePickerView;->update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V

    .line 117
    return-void

    .line 87
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_1
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v6, v8}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 88
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v6, v10}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 89
    iget-object v6, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    invoke-virtual {v6, v4}, Lnubia/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lnubia/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lnubia/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lnubia/widget/DatePickerView;->mDay:I

    return p1
.end method

.method private static getCurrentYear()I
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final adjustMaxDay()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 144
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 146
    const/4 v1, 0x2

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 147
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 148
    iget v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 149
    iget v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 151
    :cond_0
    return-void
.end method

.method public final getDayOfMonth()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lnubia/widget/DatePickerView;->mDay:I

    return v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    return v0
.end method

.method public final notifyDateChanged()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lnubia/widget/DatePickerView$OnDateChangeListener;->onDateChanged(Lnubia/widget/DatePickerView;III)V

    .line 158
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 137
    .local v7, "top":I
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    invoke-virtual {v0}, Lnubia/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 138
    .local v6, "bottom":I
    int-to-float v2, v7

    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lnubia/widget/DatePickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    int-to-float v2, v6

    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lnubia/widget/DatePickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 196
    move-object v0, p1

    check-cast v0, Lnubia/widget/DatePickerView$SavedState;

    .line 197
    .local v0, "ss":Lnubia/widget/DatePickerView$SavedState;
    invoke-virtual {v0}, Lnubia/widget/DatePickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 198
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sYear:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 199
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sMonth:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 200
    iget v1, v0, Lnubia/widget/DatePickerView$SavedState;->sDay:I

    iput v1, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 201
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 202
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 191
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lnubia/widget/DatePickerView$SavedState;

    iget v2, p0, Lnubia/widget/DatePickerView;->mYear:I

    iget v3, p0, Lnubia/widget/DatePickerView;->mMonth:I

    iget v4, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-direct {v1, v0, v2, v3, v4}, Lnubia/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v1
.end method

.method public final update(IIILnubia/widget/DatePickerView$OnDateChangeListener;)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangeListener"    # Lnubia/widget/DatePickerView$OnDateChangeListener;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 162
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 163
    iput p2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 164
    iput p3, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 165
    iput-object p4, p0, Lnubia/widget/DatePickerView;->mOnDateChangeListener:Lnubia/widget/DatePickerView$OnDateChangeListener;

    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 168
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 169
    const/4 v1, 0x2

    iget v2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 171
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 172
    return-void
.end method

.method public final updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 120
    iget v0, p0, Lnubia/widget/DatePickerView;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lnubia/widget/DatePickerView;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lnubia/widget/DatePickerView;->mDay:I

    if-eq v0, p3, :cond_1

    .line 121
    :cond_0
    iput p1, p0, Lnubia/widget/DatePickerView;->mYear:I

    .line 122
    iput p2, p0, Lnubia/widget/DatePickerView;->mMonth:I

    .line 123
    iput p3, p0, Lnubia/widget/DatePickerView;->mDay:I

    .line 124
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateSpinners()V

    .line 125
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->notifyDateChanged()V

    .line 127
    :cond_1
    return-void
.end method

.method public final updateDaySpinners()V
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 183
    .local v1, "max":I
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setMinValue(I)V

    .line 184
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v3, p0, Lnubia/widget/DatePickerView;->mMaxDayOfMonth:I

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setMaxValue(I)V

    .line 185
    iget-object v2, p0, Lnubia/widget/DatePickerView;->mDayView:Lnubia/widget/WheelView;

    iget v3, p0, Lnubia/widget/DatePickerView;->mDay:I

    invoke-virtual {v2, v3}, Lnubia/widget/WheelView;->setValue(I)V

    .line 186
    return-void
.end method

.method public final updateSpinners()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lnubia/widget/DatePickerView;->updateDaySpinners()V

    .line 176
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mYearView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    .line 177
    iget-object v0, p0, Lnubia/widget/DatePickerView;->mMonthView:Lnubia/widget/WheelView;

    iget v1, p0, Lnubia/widget/DatePickerView;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lnubia/widget/WheelView;->setValue(I)V

    .line 178
    return-void
.end method
