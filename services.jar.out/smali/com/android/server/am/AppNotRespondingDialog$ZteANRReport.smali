.class final Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;
.super Ljava/lang/Object;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZteANRReport"
.end annotation


# instance fields
.field private bootCompleted:Z

.field private mContext:Landroid/content/Context;

.field private mExceptionType:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/String;

.field private mTimeMillis:J

.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mContext:Landroid/content/Context;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mTimeMillis:J

    .line 206
    invoke-direct {p0, p3}, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->getPackageName(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mPackageName:Ljava/lang/String;

    .line 207
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->bootCompleted:Z

    .line 208
    return-void
.end method

.method private getPackageName(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 259
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v4, :cond_0

    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 261
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 262
    .local v3, "psh":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    if-eqz v3, :cond_2

    .line 263
    iget-object v2, v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 264
    .local v2, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 265
    iget-object v1, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 271
    .end local v0    # "i":I
    .end local v2    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v3    # "psh":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_0
    if-nez v1, :cond_1

    .line 272
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 273
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 277
    :cond_1
    return-object v1

    .line 260
    .restart local v0    # "i":I
    .restart local v3    # "psh":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public sendBroadcastCatchlog()V
    .locals 4

    .prologue
    .line 217
    iget-boolean v1, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->bootCompleted:Z

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cn.nubia.ACTION_CATCH_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "short_msg"

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "time_millis"

    iget-wide v2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 222
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 224
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendBroadcastDeleteLog()V
    .locals 4

    .prologue
    .line 227
    iget-boolean v1, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->bootCompleted:Z

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cn.nubia.ACTION_DELETE_LOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "short_msg"

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "time_millis"

    iget-wide v2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 234
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mStackTrace:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mExceptionType:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->sendBroadcastCatchlog()V

    .line 214
    return-void
.end method

.method public startUploadLogActivity()V
    .locals 6

    .prologue
    .line 237
    iget-boolean v3, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->bootCompleted:Z

    if-eqz v3, :cond_0

    .line 238
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    const-string v3, "short_msg"

    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mStackTrace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v3, "exception_type"

    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mExceptionType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v3, "package_name"

    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v3, "time_millis"

    iget-wide v4, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mTimeMillis:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 245
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "cn.nubia.zcrashlogupload"

    const-string v4, "cn.nubia.zcrashlogupload.ActivityMain"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 247
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 250
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
