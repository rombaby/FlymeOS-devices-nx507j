.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field static final FORCE_QUIT_ARG_POSITIVE_BUTTON:I = 0x64


# instance fields
.field private bootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mExceptionType:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStackTrace:Ljava/lang/String;

.field private mTimeMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 121
    new-instance v4, Lcom/android/server/am/AppErrorDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    iput-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    .local v3, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 68
    iput-object p4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 69
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 71
    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ne v4, v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "name":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 73
    const v4, 0x1040483

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    .line 86
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 87
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x64

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 88
    const/4 v4, -0x1

    const v5, 0x104048a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 93
    const/4 v4, -0x2

    const v5, 0x104048b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 99
    const v4, 0x1040482

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x110

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    iget-boolean v4, p4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 110
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/am/AppErrorDialog;->getPackageName(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mPackageName:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppErrorDialog;->mTimeMillis:J

    .line 112
    const-string v4, "1"

    const-string v5, "sys.boot_completed"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/AppErrorDialog;->bootCompleted:Z

    .line 116
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x493e0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 119
    return-void

    .line 77
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "name":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    .restart local v2    # "name":Ljava/lang/CharSequence;
    const v4, 0x1040484

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppErrorDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppErrorDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mExceptionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppErrorDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppErrorDialog;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/server/am/AppErrorDialog;->mTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/AppErrorDialog;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/am/AppErrorDialog;->sendBroadcastDeleteLog()V

    return-void
.end method

.method private getPackageName(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 173
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 175
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 176
    .local v3, "psh":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    if-eqz v3, :cond_2

    .line 177
    iget-object v2, v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 178
    .local v2, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 179
    iget-object v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 186
    .end local v0    # "i":I
    .end local v2    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v3    # "psh":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_0
    if-nez v1, :cond_1

    .line 187
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 188
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 192
    :cond_1
    return-object v1

    .line 174
    .restart local v0    # "i":I
    .restart local v3    # "psh":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendBroadcastCatchLog()V
    .locals 4

    .prologue
    .line 197
    iget-boolean v1, p0, Lcom/android/server/am/AppErrorDialog;->bootCompleted:Z

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cn.nubia.ACTION_CATCH_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "short_msg"

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v1, "time_millis"

    iget-wide v2, p0, Lcom/android/server/am/AppErrorDialog;->mTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendBroadcastDeleteLog()V
    .locals 4

    .prologue
    .line 208
    iget-boolean v1, p0, Lcom/android/server/am/AppErrorDialog;->bootCompleted:Z

    if-eqz v1, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cn.nubia.ACTION_DELETE_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "short_msg"

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "time_millis"

    iget-wide v2, p0, Lcom/android/server/am/AppErrorDialog;->mTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method setStackTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog;->mStackTrace:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mExceptionType:Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Lcom/android/server/am/AppErrorDialog;->sendBroadcastCatchLog()V

    .line 167
    return-void
.end method
