.class Lnubia/widget/NubiaAnalogClockWithCity$2;
.super Landroid/database/ContentObserver;
.source "NubiaAnalogClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaAnalogClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaAnalogClockWithCity;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaAnalogClockWithCity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 193
    iput-object p1, p0, Lnubia/widget/NubiaAnalogClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 198
    iget-object v0, p0, Lnubia/widget/NubiaAnalogClockWithCity$2;->this$0:Lnubia/widget/NubiaAnalogClockWithCity;

    # invokes: Lnubia/widget/NubiaAnalogClockWithCity;->updateTime()V
    invoke-static {v0}, Lnubia/widget/NubiaAnalogClockWithCity;->access$200(Lnubia/widget/NubiaAnalogClockWithCity;)V

    .line 199
    return-void
.end method
