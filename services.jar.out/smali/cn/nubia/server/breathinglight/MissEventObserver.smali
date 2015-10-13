.class public Lcn/nubia/server/breathinglight/MissEventObserver;
.super Ljava/lang/Object;
.source "MissEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/MissEventObserver$WhiteAppAsyncQueryTask;,
        Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;
    }
.end annotation


# static fields
.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final ID:Ljava/lang/String; = "_ID"

.field private static final LIGHT_SWITCH_FLAG:I = 0x8

.field private static final NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

.field private static final NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

.field private static final NOTIFY_SWITCH_FLAG:I = 0x1

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"

.field private static final TAG:Ljava/lang/String; = "MissEventObserver"


# instance fields
.field private final CALL_LOG_URI:Landroid/net/Uri;

.field private final MMS_URI:Landroid/net/Uri;

.field private final SMS_URI:Landroid/net/Uri;

.field private final WHITE_APPS_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDataBaseObserver:Landroid/database/ContentObserver;

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private mNotification:Landroid/app/INotificationManager;

.field private mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

.field private mUsingMiddleLight:Z

.field private mWhiteAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "content://com.android.systemui.settings.notificationcenter/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PKG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "FLAG"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/app/INotificationManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;
    .param p3, "settings"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p4, "notification"    # Landroid/app/INotificationManager;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    .line 44
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->SMS_URI:Landroid/net/Uri;

    .line 45
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->MMS_URI:Landroid/net/Uri;

    .line 46
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->CALL_LOG_URI:Landroid/net/Uri;

    .line 47
    const-string v1, "content://cn.nubia.lockscreen/packages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->WHITE_APPS_URI:Landroid/net/Uri;

    .line 173
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/breathinglight/MissEventObserver$1;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mDataBaseObserver:Landroid/database/ContentObserver;

    .line 223
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver$2;

    invoke-direct {v1, p0}, Lcn/nubia/server/breathinglight/MissEventObserver$2;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    .line 67
    iput-object p1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 69
    iput-object p3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 72
    iput-object p4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    .line 74
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotification:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/MissEventObserver;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->getWhiteAppList()V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/MissEventObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/MissEventObserver;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/MissEventObserver;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private getWhiteAppList()V
    .locals 10

    .prologue
    .line 98
    const/4 v7, 0x0

    .line 99
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 108
    :try_start_0
    sget-object v1, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    sget-object v2, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFICATION_CENTER_PROJECT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    if-eqz v7, :cond_3

    .line 110
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const-string v1, "FLAG"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 112
    .local v9, "flag":I
    const-string v1, "PKG_NAME"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "appName":Ljava/lang/String;
    const-string v1, "MissEventObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteAppList(): appName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    and-int/lit8 v1, v9, 0x8

    if-eqz v1, :cond_1

    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 119
    .end local v6    # "appName":Ljava/lang/String;
    .end local v9    # "flag":I
    :catch_0
    move-exception v8

    .line 120
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v7, :cond_2

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 126
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const-string v1, "MissEventObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteAppList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    :cond_3
    if-eqz v7, :cond_2

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 122
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private handleNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 201
    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    .line 204
    .local v0, "id":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/MissEventObserver;->isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/MissEventObserver;->requestBreathingLight()V

    .line 211
    .end local v0    # "id":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    .line 217
    .local v0, "id":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mWhiteAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    .end local v0    # "id":I
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isNotificationPermanent(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, "result":Z
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 188
    .local v1, "n":Landroid/app/Notification;
    if-eqz v1, :cond_1

    .line 189
    iget v0, v1, Landroid/app/Notification;->flags:I

    .line 190
    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_1

    .line 192
    :cond_0
    const/4 v2, 0x1

    .line 193
    const-string v3, "MissEventObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isNotificationPermanent result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "flags":I
    .end local v1    # "n":Landroid/app/Notification;
    :cond_1
    return v2
.end method


# virtual methods
.method public handleBootCompleted()V
    .locals 5

    .prologue
    .line 83
    const-string v0, "MissEventObserver"

    const-string v1, "handleBootCompleted !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/server/breathinglight/MissEventObserver;->NOTIFUCATION_CENTER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mDataBaseObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    new-instance v0, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;-><init>(Lcn/nubia/server/breathinglight/MissEventObserver;Lcn/nubia/server/breathinglight/MissEventObserver$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/MissEventObserver$InitAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method

.method public handleUserPresent()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 132
    return-void
.end method

.method public isUseingMiddleLight()Z
    .locals 3

    .prologue
    .line 135
    const-string v0, "MissEventObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUseingMiddleLight: mUsingMiddleLight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    return v0
.end method

.method public requestBreathingLight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isNotificationEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const-string v0, "MissEventObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBreathingLight: mNotificationList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 144
    iget-object v0, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 147
    const-string v0, "MissEventObserver"

    const-string v1, "requestBreathingLight: mNotificationList is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    iput-boolean v3, p0, Lcn/nubia/server/breathinglight/MissEventObserver;->mUsingMiddleLight:Z

    .line 151
    const-string v0, "MissEventObserver"

    const-string v1, "requestBreathingLight: notification is disable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
