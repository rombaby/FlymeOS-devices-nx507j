.class Landroid/app/NotificationDateTimeView$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationDateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationDateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationDateTimeView;


# direct methods
.method constructor <init>(Landroid/app/NotificationDateTimeView;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    # getter for: Landroid/app/NotificationDateTimeView;->mUpdateTimeMillis:J
    invoke-static {v1}, Landroid/app/NotificationDateTimeView;->access$000(Landroid/app/NotificationDateTimeView;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 275
    :cond_0
    iget-object v1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/NotificationDateTimeView;->mLastFormat:Ljava/text/DateFormat;

    .line 276
    iget-object v1, p0, Landroid/app/NotificationDateTimeView$1;->this$0:Landroid/app/NotificationDateTimeView;

    invoke-virtual {v1}, Landroid/app/NotificationDateTimeView;->update()V

    .line 277
    return-void
.end method
