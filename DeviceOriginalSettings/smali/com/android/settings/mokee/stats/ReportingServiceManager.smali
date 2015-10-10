.class public Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "ReportingServiceManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static launchService(Landroid/content/Context;)V
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, 0x0

    .line 82
    invoke-static {p0}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    const-string v7, "mokee_stats"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 84
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "pref_anonymous_checked_in"

    invoke-interface {v4, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 85
    .local v2, "lastSynced":J
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getMoKeeMajorVersion()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "deviceMoKeeMajorVersion":Ljava/lang/String;
    const-string v7, "pref_device_mokee_major_version"

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "prefDeviceMoKeeMajorVersion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 89
    .local v6, "shouldSync":Z
    cmp-long v7, v2, v12

    if-nez v7, :cond_2

    .line 90
    const/4 v6, 0x1

    .line 96
    :cond_0
    :goto_0
    if-eqz v6, :cond_5

    .line 97
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v5, "sIntent":Landroid/content/Intent;
    const-string v7, "pref_anonymous_flash_time"

    invoke-interface {v4, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v7, v8, v12

    if-nez v7, :cond_4

    .line 99
    const-class v7, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    invoke-virtual {v5, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    .end local v0    # "deviceMoKeeMajorVersion":Ljava/lang/String;
    .end local v1    # "prefDeviceMoKeeMajorVersion":Ljava/lang/String;
    .end local v2    # "lastSynced":J
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "sIntent":Landroid/content/Intent;
    .end local v6    # "shouldSync":Z
    :cond_1
    :goto_1
    return-void

    .line 91
    .restart local v0    # "deviceMoKeeMajorVersion":Ljava/lang/String;
    .restart local v1    # "prefDeviceMoKeeMajorVersion":Ljava/lang/String;
    .restart local v2    # "lastSynced":J
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "shouldSync":Z
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 92
    const/4 v6, 0x1

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 94
    const/4 v6, 0x1

    goto :goto_0

    .line 102
    .restart local v5    # "sIntent":Landroid/content/Intent;
    :cond_4
    const-class v7, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    invoke-virtual {v5, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 106
    .end local v5    # "sIntent":Landroid/content/Intent;
    :cond_5
    invoke-static {p0, v12, v13}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public static setAlarm(Landroid/content/Context;J)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "millisFromNow"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    .line 57
    const-string v5, "mokee_stats"

    invoke-virtual {p0, v5, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 59
    .local v4, "prefs":Landroid/content/SharedPreferences;
    cmp-long v5, p1, v6

    if-gtz v5, :cond_1

    .line 60
    const-string v5, "pref_anonymous_checked_in"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 61
    .local v2, "lastSynced":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_anonymous_checked_in"

    invoke-interface {v5, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    sget-object v5, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    const-string v6, "Set alarm for first sync."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long p1, v6, v8

    .line 72
    .end local v2    # "lastSynced":J
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    const-class v5, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 76
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, p1

    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 78
    sget-object v5, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next sync attempt in : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0x36ee80

    div-long v8, p1, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hours"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;->launchService(Landroid/content/Context;)V

    goto :goto_0
.end method
