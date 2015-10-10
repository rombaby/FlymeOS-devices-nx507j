.class public Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;
.super Landroid/app/Service;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$1;,
        Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->convertStreamToJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private convertStreamToJSONObject(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 183
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private createMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 63
    sget-object v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->TAG:Ljava/lang/String;

    const-string v1, "User has opted in -- reporting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 66
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;

    .line 67
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/ReportingService$StatsUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    :cond_1
    const/4 v0, 0x3

    return v0
.end method
