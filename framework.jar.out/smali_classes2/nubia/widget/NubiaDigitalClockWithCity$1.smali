.class Lnubia/widget/NubiaDigitalClockWithCity$1;
.super Landroid/content/BroadcastReceiver;
.source "NubiaDigitalClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaDigitalClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaDigitalClockWithCity;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaDigitalClockWithCity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lnubia/widget/NubiaDigitalClockWithCity$1;->this$0:Lnubia/widget/NubiaDigitalClockWithCity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity$1;->this$0:Lnubia/widget/NubiaDigitalClockWithCity;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    # setter for: Lnubia/widget/NubiaDigitalClockWithCity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lnubia/widget/NubiaDigitalClockWithCity;->access$002(Lnubia/widget/NubiaDigitalClockWithCity;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 64
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaDigitalClockWithCity$1;->this$0:Lnubia/widget/NubiaDigitalClockWithCity;

    # getter for: Lnubia/widget/NubiaDigitalClockWithCity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lnubia/widget/NubiaDigitalClockWithCity;->access$200(Lnubia/widget/NubiaDigitalClockWithCity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lnubia/widget/NubiaDigitalClockWithCity$1$1;

    invoke-direct {v2, p0}, Lnubia/widget/NubiaDigitalClockWithCity$1$1;-><init>(Lnubia/widget/NubiaDigitalClockWithCity$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
