.class public Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "SingleSideCtrl.java"


# static fields
.field private static final MAX_TASKS:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SingleSideCtrl"


# instance fields
.field private final APP_SEPARATOR:Ljava/lang/String;

.field private final COMPONENT_SEPARATOR:Ljava/lang/String;

.field private final SWITCH_APP:Ljava/lang/String;

.field private final SWITCH_OFF:Ljava/lang/String;

.field mActivityStackReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeBySwitch:Z

.field private mCurrentAppIndex:I

.field private mNeedUpdate:Z

.field private mRecentAppSwitchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 34
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 35
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    .line 36
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 38
    const-string v1, "off"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->SWITCH_OFF:Ljava/lang/String;

    .line 39
    const-string v1, "switch_app"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->SWITCH_APP:Ljava/lang/String;

    .line 40
    const-string v1, ";"

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->APP_SEPARATOR:Ljava/lang/String;

    .line 41
    const-string v1, ","

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->COMPONENT_SEPARATOR:Ljava/lang/String;

    .line 382
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 48
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    .line 51
    iput-boolean v5, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityStackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v2, v8, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeGestureListener;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    return p1
.end method

.method private canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 266
    const/4 v0, 0x1

    .line 268
    .local v0, "canBeAdd":Z
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 276
    :cond_0
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const/4 v0, 0x0

    .line 280
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private checkComponentNameValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doGestureFunction(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isUp"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    if-eqz p1, :cond_1

    .line 134
    const-string v0, "switch_app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSwitchApp(Z)V

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0, v2, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->luncherPresetApp(ZLjava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    const-string v0, "switch_app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doSwitchApp(Z)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0, v1, p2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->luncherPresetApp(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private doLeftSideSlid(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 97
    const-string v1, "nubia_edge_left_move_switch"

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getGestureSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "switchState":Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->showLeftGuideIfNeed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 101
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-ne p1, v2, :cond_0

    .line 103
    invoke-direct {p0, v2, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private doRightSideSlid(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 115
    const-string v1, "nubia_edge_right_move_switch"

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getGestureSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "switchState":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->showRightGuideIfNeed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 121
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doGestureFunction(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private getGestureSwitch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 377
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private lunacherAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;)V
    .locals 8
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    const-string v4, "SingleSideCtrl"

    const-string v5, "lunacherAppInternal: app is empty !"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "component":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 341
    :cond_1
    const-string v4, "SingleSideCtrl"

    const-string v5, "lunacherAppInternal: app\'s component is invalid !"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-direct {p0, v4, v5}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->checkComponentNameValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v0, v6

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 347
    :cond_3
    const-string v4, "SingleSideCtrl"

    const-string v5, "lunacherAppInternal: app\'s component is empty or current run !"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const v4, 0x10304000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    :try_start_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 363
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 364
    .local v2, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private luncherPresetApp(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isUp"    # Z
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    :cond_0
    const-string v2, "SingleSideCtrl"

    const-string v3, "luncherPresetApp: presetapp is empty or keyguard locked!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "apps":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 314
    :cond_2
    const-string v2, "SingleSideCtrl"

    const-string v3, "luncherPresetApp: presetapp is invalid!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_3
    if-eqz p1, :cond_4

    .line 319
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v3, 0x304000e

    const v4, 0x304000f

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 322
    .local v1, "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->lunacherAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;)V

    goto :goto_0

    .line 326
    .end local v1    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v3, 0x3040012

    const v4, 0x3040013

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 329
    .restart local v1    # "opts":Landroid/app/ActivityOptions;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v2, v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->lunacherAppInternal(Ljava/lang/String;Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method

.method private showLeftGuideIfNeed()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method

.method private showRightGuideIfNeed()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method

.method private skipHomeAppIfNeed(Z)V
    .locals 5
    .param p1, "isUp"    # Z

    .prologue
    .line 206
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 208
    .local v1, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isHomeApplication(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    .local v0, "length":I
    if-eqz p1, :cond_2

    .line 215
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 216
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_0

    .line 217
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_0

    .line 220
    :cond_2
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 221
    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    if-gez v3, :cond_0

    .line 222
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_0
.end method

.method private switchNextOrPreviousApp(Z)V
    .locals 5
    .param p1, "isUp"    # Z

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-boolean v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    if-eqz v2, :cond_0

    .line 172
    iput-boolean v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z

    .line 173
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 174
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->updateRecentAppSwitchList()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunApp()Landroid/content/ComponentName;

    move-result-object v0

    .line 177
    .local v0, "currentRunApp":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 183
    .local v1, "length":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 186
    if-eqz p1, :cond_4

    .line 187
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_3

    .line 188
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    .line 200
    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->skipHomeAppIfNeed(Z)V

    .line 202
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->switchToNewApp(Z)V

    goto :goto_0

    .line 190
    :cond_3
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 193
    :cond_4
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    if-nez v2, :cond_5

    .line 194
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1

    .line 196
    :cond_5
    iget v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    goto :goto_1
.end method

.method private switchToNewApp(Z)V
    .locals 8
    .param p1, "isUp"    # Z

    .prologue
    const/4 v7, 0x1

    .line 229
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    iget v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mCurrentAppIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 231
    .local v1, "newTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 235
    .local v2, "opts":Landroid/app/ActivityOptions;
    if-eqz p1, :cond_1

    .line 237
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v4, 0x304000c

    const v5, 0x3040011

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 251
    :goto_1
    iget v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v3, :cond_2

    .line 252
    iget-object v0, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 262
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2
    iput-boolean v7, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z

    goto :goto_0

    .line 242
    :cond_1
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mContext:Landroid/content/Context;

    const v4, 0x3040010

    const v5, 0x304000d

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1

    .line 259
    :cond_2
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    iget v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method private updateRecentAppSwitchList()V
    .locals 7

    .prologue
    .line 284
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 285
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 287
    :cond_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x15

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v3

    .line 290
    .local v3, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 304
    :cond_1
    return-void

    .line 292
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 293
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 294
    .local v2, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v2, :cond_4

    .line 292
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_4
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 298
    iget-object v4, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 299
    .local v0, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->canAddIntoRecentAppSwitchList(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "currentApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSystemUIApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method doSwitchApp(Z)V
    .locals 1
    .param p1, "isUp"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mRecentAppSwitchList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->switchNextOrPreviousApp(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method getCurrentRunApp()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 161
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 162
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 163
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 166
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method handleEdgeGesture(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 92
    const-string v0, "SingleSideCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not listen this type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doLeftSideSlid(I)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->doRightSideSlid(I)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
