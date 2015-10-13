.class public Lnubia/widget/NubiaAnalogClockWithCity;
.super Landroid/widget/FrameLayout;
.source "NubiaAnalogClockWithCity.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mAnalogClock:Lnubia/widget/NubiaAnalogClock;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCityView:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/NubiaAnalogClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnubia/widget/NubiaAnalogClockWithCity;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    new-instance v7, Lnubia/widget/NubiaAnalogClockWithCity$1;

    invoke-direct {v7, p0}, Lnubia/widget/NubiaAnalogClockWithCity$1;-><init>(Lnubia/widget/NubiaAnalogClockWithCity;)V

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v7, Lnubia/widget/NubiaAnalogClockWithCity$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lnubia/widget/NubiaAnalogClockWithCity$2;-><init>(Lnubia/widget/NubiaAnalogClockWithCity;Landroid/os/Handler;)V

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 46
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 48
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x3030001

    const/4 v8, 0x1

    invoke-virtual {v5, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    const v7, 0x30d000e

    invoke-virtual {p0, v7}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lnubia/widget/NubiaAnalogClock;

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    .line 53
    const v7, 0x30d000f

    invoke-virtual {p0, v7}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    .line 54
    const v7, 0x30d0010

    invoke-virtual {p0, v7}, Lnubia/widget/NubiaAnalogClockWithCity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    .line 56
    sget-object v7, Lcn/nubia/internal/R$styleable;->ClockWidgetAnalogClockWithCity:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 64
    .local v2, "cityTextSize":F
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 69
    .local v1, "cityTextColor":I
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 73
    .local v4, "dateTextSize":F
    const/4 v7, 0x3

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 79
    .local v3, "dateTextColor":I
    float-to-int v7, v2

    if-eqz v7, :cond_0

    .line 80
    iget-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    :cond_0
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 82
    iget-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    :cond_1
    float-to-int v7, v4

    if-eqz v7, :cond_2

    .line 86
    iget-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    :cond_2
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3

    .line 88
    iget-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 93
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x30c0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateFormat:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaAnalogClockWithCity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .prologue
    .line 28
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/widget/NubiaAnalogClockWithCity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .prologue
    .line 28
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaAnalogClockWithCity;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaAnalogClockWithCity;

    .prologue
    .line 28
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->updateTime()V

    return-void
.end method

.method private updateTime()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateFormat:Ljava/lang/String;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    .local v0, "dateFormat":Ljava/lang/CharSequence;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .end local v0    # "dateFormat":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 162
    .restart local v0    # "dateFormat":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 109
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 111
    iget-boolean v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    if-nez v1, :cond_0

    .line 112
    iput-boolean v4, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    .line 127
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 131
    :cond_1
    invoke-direct {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->updateTime()V

    .line 132
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 169
    iget-boolean v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAttached:Z

    .line 174
    :cond_0
    invoke-virtual {p0}, Lnubia/widget/NubiaAnalogClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .param p1, "city"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCityView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 141
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity;->mAnalogClock:Lnubia/widget/NubiaAnalogClock;

    invoke-virtual {v0, p1}, Lnubia/widget/NubiaAnalogClock;->setTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method
