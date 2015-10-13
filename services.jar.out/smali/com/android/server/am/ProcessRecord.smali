.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field dataId:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field displayId:I

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field euid:I

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field fixedStackId:I

.field forceCrashReport:Z

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field isIme:Z

.field final isolated:Z

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStackId:I

.field lastStateTime:J

.field lastWakeTime:J

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field mConfiguration:Landroid/content/res/Configuration;

.field maxAdj:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field sensorAdjustment:I

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field startStackId:I

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 6
    .param p1, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .prologue
    const/16 v5, -0x64

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->startStackId:I

    .line 62
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->lastStackId:I

    .line 63
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->sensorAdjustment:I

    .line 64
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->displayId:I

    .line 65
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->dataId:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mConfiguration:Landroid/content/res/Configuration;

    .line 67
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isIme:Z

    .line 68
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->fixedStackId:I

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 98
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 99
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 100
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 101
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 155
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 158
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 161
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 413
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 414
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 415
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 416
    iput p4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 417
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 418
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 421
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 422
    iput v5, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 423
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 424
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 426
    return-void

    :cond_0
    move v0, v1

    .line 415
    goto :goto_0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 637
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 639
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 642
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_0

    .line 644
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 649
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 651
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :goto_1
    return v1

    .line 647
    .restart local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 651
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 196
    .local v2, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "user #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 197
    const-string v1, " uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 199
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v1, :cond_4

    .line 200
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->euid:I

    if-eqz v1, :cond_0

    .line 201
    const-string v1, " euid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->euid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 203
    :cond_0
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->lastStackId:I

    if-ltz v1, :cond_1

    .line 204
    const-string v1, " lastStackId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->lastStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 206
    :cond_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->fixedStackId:I

    if-ltz v1, :cond_2

    .line 207
    const-string v1, " fixedStackId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->fixedStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 209
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isIme:Z

    if-eqz v1, :cond_3

    .line 210
    const-string v1, " isIme"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    :cond_3
    const-string v1, " config="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 213
    const-string v1, "displayId: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->displayId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    const-string v1, " dataId: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->dataId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 217
    :cond_4
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v6, :cond_5

    .line 218
    const-string v1, " ISOLATED uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 220
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 221
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 222
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "class="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "manageSpaceActivityName="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "dir="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    const-string v1, " publicDir="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    const-string v1, " data="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "packageList={"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 233
    if-lez v0, :cond_8

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_9
    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v1, :cond_c

    .line 238
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "packageDependencies={"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 240
    if-lez v0, :cond_a

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_b
    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "compat="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_e

    .line 248
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "instrumentationClass="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 250
    const-string v1, " instrumentationProfileFile="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "instrumentationArguments="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "instrumentationInfo="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_e

    .line 257
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 260
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "thread="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "pid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " starting="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastActivityTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 265
    const-string v1, " lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 267
    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 270
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "adjSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 271
    const-string v1, " lruSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 272
    const-string v1, " lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 273
    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 274
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "cached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 275
    const-string v1, " empty="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 276
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v1, :cond_f

    .line 277
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "serviceb="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 278
    const-string v1, " serviceHighRam="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 280
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v1, :cond_10

    .line 281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "notCachedSinceIdle="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 282
    const-string v1, " initialIdlePss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 284
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "oom: max="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 285
    const-string v1, " curRaw="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 286
    const-string v1, " setRaw="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 287
    const-string v1, " cur="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 288
    const-string v1, " set="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 289
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "curSchedGroup="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 290
    const-string v1, " setSchedGroup="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 291
    const-string v1, " systemNoUi="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 292
    const-string v1, " trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 293
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "curProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 294
    const-string v1, " repProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 295
    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string v1, " setProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 297
    const-string v1, " lastStateTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 300
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v1, :cond_12

    .line 301
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasShownUi="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 302
    const-string v1, " pendingUiClean="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 303
    const-string v1, " hasAboveClient="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 304
    const-string v1, " treatLikeActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 306
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    if-eqz v1, :cond_14

    .line 307
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "setIsForeground="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 308
    const-string v1, " foregroundServices="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 309
    const-string v1, " forcingToForeground="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 311
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v1, :cond_16

    .line 312
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "persistent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 313
    const-string v1, " removed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v1, :cond_18

    .line 316
    :cond_17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasClientActivities="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 317
    const-string v1, " foregroundActivities="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 318
    const-string v1, " (rep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v1, :cond_19

    .line 321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasStartedServices="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 323
    :cond_19
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v6, 0x7

    if-lt v1, v6, :cond_1a

    .line 325
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v1, v7, v8, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v4

    .line 328
    .local v4, "wtime":J
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastWakeTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 330
    const-string v1, " timeUsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastCpuTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 333
    const-string v1, " timeUsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .end local v4    # "wtime":J
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 338
    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 340
    const-string v1, " reportLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 341
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v1, :cond_1c

    .line 342
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "killed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 343
    const-string v1, " killedByAm="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 344
    const-string v1, " waitingToKill="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    :cond_1c
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v1, :cond_1f

    .line 348
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "debugging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 349
    const-string v1, " crashing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 350
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 351
    const-string v1, " notResponding="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 352
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 353
    const-string v1, " bad="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 356
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_1e

    .line 357
    const-string v1, " errorReportReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    :cond_1e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 362
    :cond_1f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 368
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Services:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 371
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 374
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 375
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Executing Services (fg="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 376
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 378
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 381
    :cond_22
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_23

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Connections:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 384
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 387
    :cond_23
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 388
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Published Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    -> "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 394
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Connected Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 400
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_26

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "curReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 403
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Receivers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 409
    :cond_27
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 664
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    if-le v0, p1, :cond_0

    .line 665
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 667
    :cond_0
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 704
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 705
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 706
    const/4 v1, 0x0

    .line 712
    :cond_0
    return-object v1

    .line 708
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 709
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 710
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSetAdjWithServices()I
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 656
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_0

    .line 657
    const/16 v0, 0x8

    .line 660
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    goto :goto_0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    .prologue
    .line 485
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 486
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 487
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 488
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 489
    const/4 v3, 0x1

    .line 492
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v3

    .line 486
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method kill(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 544
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_1

    .line 545
    if-eqz p2, :cond_0

    .line 546
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 550
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 551
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 552
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_1

    .line 553
    iput-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 554
    iput-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 557
    :cond_1
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .locals 8
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 436
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 437
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_0

    .line 438
    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 440
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 444
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 445
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_3

    .line 446
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 447
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_1

    .line 448
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 452
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v3, :cond_2

    .line 453
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 445
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "i":I
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 458
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 607
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 609
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :goto_0
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 619
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v1

    .line 612
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 615
    :cond_2
    const-string v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 622
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 623
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 625
    :cond_4
    const-string v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 629
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .locals 9
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v8, 0x0

    .line 461
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 462
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 463
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_2

    .line 464
    if-eqz v1, :cond_0

    .line 465
    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 467
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 469
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 470
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 472
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_1

    .line 473
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 475
    :cond_1
    iput-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 470
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v7    # "i":I
    :cond_2
    return-void
.end method

.method modifyRawOomAdj(I)I
    .locals 1
    .param p1, "adj"    # I

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_0

    .line 528
    if-gez p1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return p1

    .line 530
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 531
    const/4 p1, 0x1

    goto :goto_0

    .line 532
    :cond_2
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    .line 533
    const/4 p1, 0x2

    goto :goto_0

    .line 534
    :cond_3
    const/16 v0, 0x9

    if-ge p1, v0, :cond_4

    .line 535
    const/16 p1, 0x9

    goto :goto_0

    .line 536
    :cond_4
    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 537
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .locals 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v10, 0x1

    .line 673
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 674
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_3

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 676
    .local v4, "now":J
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 678
    if-eq v0, v10, :cond_2

    .line 679
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 680
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 681
    .local v7, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_0

    .line 682
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 679
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 686
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 687
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v9

    .line 689
    .local v9, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v7, v1}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 691
    .restart local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 692
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v9, v1, :cond_2

    .line 694
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 701
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    :goto_1
    return-void

    .line 697
    :cond_3
    if-eq v0, v10, :cond_2

    .line 698
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 699
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v6}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setPid(I)V
    .locals 1
    .param p1, "_pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 429
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 430
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 431
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 498
    add-int/lit8 v0, v0, -0x1

    .line 499
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 501
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 565
    :goto_0
    return-object v1

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 564
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    goto :goto_0
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2710

    .line 569
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_1

    .line 574
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    const/16 v1, 0x75

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 579
    .local v0, "appId":I
    if-lt v0, v2, :cond_2

    .line 580
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    :goto_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_0

    .line 587
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 583
    :cond_2
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 603
    :goto_0
    return-object v1

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 598
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 602
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method

.method public unlinkDeathRecipient()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 507
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 508
    return-void
.end method

.method updateHasAboveClientLocked()V
    .locals 3

    .prologue
    .line 511
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 512
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 513
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 514
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 515
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 519
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    return-void

    .line 512
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
