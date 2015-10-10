.class public Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushingMessageReceiver.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static printBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :cond_0
    sget-object v3, Lcn/jpush/android/api/JPushInterface;->EXTRA_CONNECTION_CHANGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 157
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 160
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private promptUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "icon"    # I

    .prologue
    .line 132
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 134
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 135
    .local v6, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    .local v2, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p1, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 138
    .local v5, "pendintIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    new-instance v8, Landroid/app/Notification$Builder;

    invoke-direct {v8, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 144
    .local v4, "noti":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v3, v0, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "customContentString"    # Ljava/lang/String;

    .prologue
    .line 66
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string v2, ""

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 67
    const/4 v10, 0x0

    .line 69
    .local v10, "customJson":Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "customJson":Lorg/json/JSONObject;
    .local v11, "customJson":Lorg/json/JSONObject;
    move-object v10, v11

    .line 73
    .end local v11    # "customJson":Lorg/json/JSONObject;
    .restart local v10    # "customJson":Lorg/json/JSONObject;
    :goto_2
    const-string v1, "mokee_push"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 74
    const-string v1, "device"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "device":Ljava/lang/String;
    const-string v1, "type"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, "modType":Ljava/lang/String;
    const-string v1, "url"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "url":Ljava/lang/String;
    const-string v1, "title"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "title":Ljava/lang/String;
    const-string v1, "version"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v19

    .line 79
    .local v19, "newVersion":Ljava/lang/String;
    const-string v1, "hashid"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "HASHID":Ljava/lang/String;
    const-string v1, "user"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v21

    .line 81
    .local v21, "user":Ljava/lang/String;
    const-string v1, "imei"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getStringFromJson(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "IMEI":Ljava/lang/String;
    const-string v1, "id"

    invoke-static {v1, v10}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->getIntFromJson(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v6

    .line 83
    .local v6, "msg_id":I
    sget-object v1, Lcom/mokee/os/Build;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 84
    .local v16, "mod_device":Ljava/lang/String;
    sget-object v1, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 86
    .local v17, "mod_version":Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 129
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v6    # "msg_id":I
    .end local v8    # "HASHID":Ljava/lang/String;
    .end local v9    # "IMEI":Ljava/lang/String;
    .end local v10    # "customJson":Lorg/json/JSONObject;
    .end local v12    # "device":Ljava/lang/String;
    .end local v15    # "modType":Ljava/lang/String;
    .end local v16    # "mod_device":Ljava/lang/String;
    .end local v17    # "mod_version":Ljava/lang/String;
    .end local v19    # "newVersion":Ljava/lang/String;
    .end local v21    # "user":Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 70
    .restart local v10    # "customJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 71
    .local v13, "e1":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v13    # "e1":Lorg/json/JSONException;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v6    # "msg_id":I
    .restart local v8    # "HASHID":Ljava/lang/String;
    .restart local v9    # "IMEI":Ljava/lang/String;
    .restart local v12    # "device":Ljava/lang/String;
    .restart local v15    # "modType":Ljava/lang/String;
    .restart local v16    # "mod_device":Ljava/lang/String;
    .restart local v17    # "mod_version":Ljava/lang/String;
    .restart local v19    # "newVersion":Ljava/lang/String;
    .restart local v21    # "user":Ljava/lang/String;
    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-static {v12, v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->allowPush(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->allowPush(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_3
    const-string v1, "all"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "all"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    const-string v1, "all"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-static {v15, v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->allowPush(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-static {v12, v0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingUtils;->allowPush(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "all"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :cond_6
    packed-switch v6, :pswitch_data_1

    goto :goto_3

    .line 95
    :pswitch_1
    const-string v1, "-"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v18, v1, v2

    .line 96
    .local v18, "mod_version_code":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 97
    .local v20, "new_version_code":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_7

    .line 98
    const/4 v1, 0x2

    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 100
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v0, v20

    if-le v0, v1, :cond_0

    .line 101
    new-instance v14, Landroid/content/Intent;

    const-string v1, "com.mokee.mkupdater.action.UPDATE_CHECK"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v14, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_3

    .line 106
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v18    # "mod_version_code":Ljava/lang/String;
    .end local v20    # "new_version_code":I
    :pswitch_2
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/mokee/utils/MoKeeUtils;->isSupportLanguage(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_news"

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const v7, 0x7f020076

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->promptUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 114
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const v7, 0x7f020076

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->promptUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 119
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const v7, 0x7f020076

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->promptUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 124
    :pswitch_5
    sget-object v1, Lcom/mokee/os/Build;->BUILD_USER:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const v7, 0x7f020076

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->promptUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MyReceiver] onReceive - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->printBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v3, Lcn/jpush/android/api/JPushInterface;->ACTION_MESSAGE_RECEIVED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    sget-object v3, Lcn/jpush/android/api/JPushInterface;->EXTRA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "message":Ljava/lang/String;
    sget-object v3, Lcn/jpush/android/api/JPushInterface;->EXTRA_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "customContentString":Ljava/lang/String;
    invoke-virtual {p0, p1, v2, v1}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingMessageReceiver;->onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v3, Lcn/jpush/android/api/JPushInterface;->EXTRA_MSG_ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/jpush/android/api/JPushInterface;->reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    .end local v1    # "customContentString":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method
