.class Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;
.super Landroid/os/AsyncTask;
.source "UpdatingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    .line 65
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "deviceId":Ljava/lang/String;
    sget-object v3, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    .line 67
    .local v3, "deviceVersion":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    const-string v10, "mokee_stats"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "pref_anonymous_flash_time"

    const-wide/16 v12, 0x0

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "deviceFlashTime":Ljava/lang/String;
    sget-object v9, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SERVICE: Device ID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v9, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SERVICE: Device Version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v9, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SERVICE: Device Flash Time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 75
    .local v5, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    const-string v9, "http://stats.mokeedev.com/index.php/Submit/updatev2"

    invoke-direct {v6, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 76
    .local v6, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v8, 0x0

    .line 79
    .local v8, "success":Z
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v7, "kv":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "device_hash"

    invoke-direct {v9, v10, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "device_version"

    invoke-direct {v9, v10, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "device_flash_time"

    invoke-direct {v9, v10, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v9, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 84
    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v8, 0x1

    .line 91
    .end local v7    # "kv":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    return-object v9

    .line 87
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->TAG:Ljava/lang/String;

    const-string v10, "Could not update stats checkin"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    .line 99
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getMoKeeMajorVersion()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "deviceMoKeeMajorVersion":Ljava/lang/String;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    const-string v6, "mokee_stats"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 102
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pref_device_mokee_major_version"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    const-wide/16 v2, 0x0

    .line 111
    .end local v1    # "deviceMoKeeMajorVersion":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .local v2, "interval":J
    :goto_0
    invoke-static {v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 112
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->stopSelf()V

    .line 113
    return-void

    .line 108
    .end local v2    # "interval":J
    :cond_0
    const-wide/32 v2, 0xa4cb80

    .restart local v2    # "interval":J
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
