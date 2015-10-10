.class Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
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
.field private is:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    .line 80
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "deviceId":Ljava/lang/String;
    sget-object v7, Lcom/mokee/os/Build;->PRODUCT_NAME:Ljava/lang/String;

    .line 82
    .local v7, "deviceName":Ljava/lang/String;
    sget-object v8, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    .line 83
    .local v8, "deviceVersion":Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "deviceCountry":Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "deviceCarrier":Ljava/lang/String;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "deviceCarrierId":Ljava/lang/String;
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE: Device ID="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE: Device Name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE: Device Version="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE: Country="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE: Carrier="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE: Carrier ID="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    move-object/from16 v18, v0

    const v19, 0x7f0a043e

    invoke-virtual/range {v18 .. v19}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v16

    .line 97
    .local v16, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v0, v7, v8, v5}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->access$100(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 102
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 103
    .local v14, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 104
    .local v9, "deviceVersionNoDevice":Ljava/lang/String;
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 105
    const/16 v17, 0x0

    aget-object v9, v14, v17

    .line 110
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    move-object/from16 v17, v0

    const-string v18, "checkin"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    # invokes: Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v0, v1, v7, v9}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->access$100(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 115
    :cond_1
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 116
    .local v11, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    const-string v17, "http://stats.mokeedev.com/index.php/Submit/flash"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 117
    .local v12, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v15, 0x0

    .line 120
    .local v15, "success":Z
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v13, "kv":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "device_hash"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "device_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "device_version"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "device_country"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "device_carrier"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v17, Lorg/apache/http/message/BasicNameValuePair;

    const-string v18, "device_carrier_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v17, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 129
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v15, 0x1

    .line 136
    .end local v13    # "kv":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_1
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    return-object v17

    .line 106
    .end local v11    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v15    # "success":Z
    :cond_2
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    aget-object v18, v14, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2

    aget-object v18, v14, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 132
    .restart local v11    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v15    # "success":Z
    :catch_0
    move-exception v10

    .line 133
    .local v10, "e":Ljava/io/IOException;
    sget-object v17, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    const-string v18, "Could not upload stats checkin"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    .line 144
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getMoKeeMajorVersion()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "deviceMoKeeMajorVersion":Ljava/lang/String;
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    const-string v9, "mokee_stats"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 147
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    .line 149
    .local v2, "device_flash_time":J
    :try_start_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->is:Ljava/io/InputStream;

    # invokes: Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->convertStreamToJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    invoke-static {v8, v9}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->access$200(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "device_flash_time"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 153
    :goto_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "pref_anonymous_flash_time"

    invoke-interface {v8, v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "pref_device_mokee_major_version"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 157
    const-wide/16 v6, 0x0

    .line 163
    .end local v1    # "deviceMoKeeMajorVersion":Ljava/lang/String;
    .end local v2    # "device_flash_time":J
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .local v6, "interval":J
    :goto_1
    invoke-static {v0, v6, v7}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 164
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->stopSelf()V

    .line 165
    return-void

    .line 150
    .end local v6    # "interval":J
    .restart local v1    # "deviceMoKeeMajorVersion":Ljava/lang/String;
    .restart local v2    # "device_flash_time":J
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v1    # "deviceMoKeeMajorVersion":Ljava/lang/String;
    .end local v2    # "device_flash_time":J
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-wide/32 v6, 0xa4cb80

    .restart local v6    # "interval":J
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
