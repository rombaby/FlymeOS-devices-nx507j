.class public Lcom/mokee/helper/receiver/UpdateCheckReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateCheckReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x400

    const/4 v6, 0x0

    .line 41
    const-string v7, "downloader"

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 42
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "pref_update_interval"

    const v8, 0x15180

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 45
    .local v5, "updateFrequency":I
    const/4 v7, -0x2

    if-ne v5, v7, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 53
    const-string v7, "noConnectivity"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v2, 0x1

    .line 55
    .local v2, "hasConnection":Z
    :goto_1
    const-string v7, "UpdateCheckReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got connectivity change, has connection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-eqz v2, :cond_0

    .line 65
    .end local v2    # "hasConnection":Z
    :cond_2
    :goto_2
    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    .line 66
    const-string v7, "boot_check_completed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 67
    .local v1, "bootCheckCompleted":Z
    if-nez v1, :cond_5

    .line 68
    const-string v6, "UpdateCheckReceiver"

    const-string v7, "Start an on-boot check"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "com.mokee.mkupdater.action.CHECK"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v6, "download_flag"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    .end local v1    # "bootCheckCompleted":Z
    .end local v3    # "i":Landroid/content/Intent;
    :cond_3
    move v2, v6

    .line 53
    goto :goto_1

    .line 59
    :cond_4
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "boot_check_completed"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 75
    .restart local v1    # "bootCheckCompleted":Z
    :cond_5
    const-string v6, "UpdateCheckReceiver"

    const-string v7, "On-boot update check was already completed."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v1    # "bootCheckCompleted":Z
    :cond_6
    if-lez v5, :cond_7

    .line 79
    const-string v6, "UpdateCheckReceiver"

    const-string v7, "Scheduling future, repeating update checks."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    mul-int/lit16 v6, v5, 0x3e8

    invoke-static {p1, v6}, Lcom/mokee/helper/utils/Utils;->scheduleUpdateService(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 81
    :cond_7
    const-string v6, "com.mokee.mkupdater.action.UPDATE_CHECK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .restart local v3    # "i":Landroid/content/Intent;
    const-string v6, "com.mokee.mkupdater.action.CHECK"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v6, "download_flag"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
