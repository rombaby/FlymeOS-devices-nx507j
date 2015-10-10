.class public Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;
.super Landroid/app/Service;
.source "UpdatingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$1;,
        Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->TAG:Ljava/lang/String;

    const-string v1, "User has opted in -- updating."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;

    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService;->mTask:Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/UpdatingService$StatsUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    :cond_1
    const/4 v0, 0x3

    return v0
.end method
