.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;
    }
.end annotation


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field static final FORCE_CLOSE_AND_REPORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mZteANRReport:Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 54
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 57
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 61
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;

    iget-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v5, p0, p2, v6}, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;-><init>(Lcom/android/server/am/AppNotRespondingDialog;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog;->mZteANRReport:Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;

    .line 64
    invoke-virtual {p0, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    .line 67
    if-eqz p4, :cond_1

    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, "name1":Ljava/lang/CharSequence;
    :goto_0
    const/4 v2, 0x0

    .line 71
    .local v2, "name2":Ljava/lang/CharSequence;
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ne v5, v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 73
    if-eqz v1, :cond_2

    .line 74
    const v4, 0x1040486

    .line 90
    .local v4, "resid":I
    :goto_1
    if-eqz v2, :cond_5

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v5, -0x1

    const v6, 0x104048a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 97
    const/4 v5, -0x2

    const v6, 0x104048c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 110
    const/4 v5, -0x3

    const v6, 0x104048b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 115
    const v5, 0x1040485

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    if-eqz p5, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 120
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Not Responding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    const/16 v5, 0x110

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 124
    return-void

    .line 67
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "name1":Ljava/lang/CharSequence;
    .end local v2    # "name2":Ljava/lang/CharSequence;
    .end local v4    # "resid":I
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 76
    .restart local v1    # "name1":Ljava/lang/CharSequence;
    .restart local v2    # "name2":Ljava/lang/CharSequence;
    :cond_2
    move-object v1, v2

    .line 77
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 78
    const v4, 0x1040488

    .restart local v4    # "resid":I
    goto/16 :goto_1

    .line 81
    .end local v4    # "resid":I
    :cond_3
    if-eqz v1, :cond_4

    .line 82
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 83
    const v4, 0x1040487

    .restart local v4    # "resid":I
    goto/16 :goto_1

    .line 85
    .end local v4    # "resid":I
    :cond_4
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 86
    const v4, 0x1040489

    .restart local v4    # "resid":I
    goto/16 :goto_1

    .line 90
    :cond_5
    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mZteANRReport:Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;

    return-object v0
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mZteANRReport:Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mZteANRReport:Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppNotRespondingDialog$ZteANRReport;->setStackTrace(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
