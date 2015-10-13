.class public Lcom/android/server/notification/NotificationBlackWhiteList;
.super Ljava/lang/Object;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;,
        Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;
    }
.end annotation


# static fields
.field private static final ALLOW_NOTIFY_FLAG:I = 0x1

.field private static final AUTHORITY:Ljava/lang/String; = "com.android.systemui.settings.notificationcenter"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_FLAG:I = 0x5

.field private static final FLAG:Ljava/lang/String; = "FLAG"

.field private static final PKG_NAME:Ljava/lang/String; = "PKG_NAME"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPresetUtil:Lcom/android/server/notification/PreInstalledListUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "content://com.android.systemui.settings.notificationcenter/appsettingsinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/android/server/notification/NotificationBlackWhiteList$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationBlackWhiteList$1;-><init>(Lcom/android/server/notification/NotificationBlackWhiteList;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/android/server/notification/PreInstalledListUtil;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/notification/PreInstalledListUtil;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mPresetUtil:Lcom/android/server/notification/PreInstalledListUtil;

    .line 53
    invoke-direct {p0}, Lcom/android/server/notification/NotificationBlackWhiteList;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationBlackWhiteList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/notification/NotificationBlackWhiteList;->handleNotifyDbChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/notification/NotificationBlackWhiteList;->getInstalledAppsFlag()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationBlackWhiteList;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/server/notification/NotificationBlackWhiteList;->getAllAppsFlag()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getAllAppsFlag()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 112
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, v4, v4}, Lcom/android/server/notification/NotificationBlackWhiteList;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 114
    .local v1, "mCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 115
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_1
    :goto_0
    return-object v3

    .line 118
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 120
    const-string v4, "PKG_NAME"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "pkgName":Ljava/lang/String;
    const-string v4, "FLAG"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 123
    .local v0, "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 125
    .end local v0    # "flag":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_1

    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getAppFlagByPkgName(Ljava/lang/String;)I
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v2, 0x5

    .line 99
    .local v2, "result":I
    const-string v3, "PKG_NAME = ?"

    .line 100
    .local v3, "selection":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 101
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/android/server/notification/NotificationBlackWhiteList;->getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 102
    .local v1, "mCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const-string v5, "FLAG"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 104
    .local v0, "flag":I
    move v2, v0

    .line 106
    .end local v0    # "flag":I
    :cond_0
    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    return v2
.end method

.method private getCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 131
    const/4 v6, 0x0

    .line 133
    .local v6, "csr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 138
    :goto_0
    return-object v6

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getInstalledAppsFlag()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "packs":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 82
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 83
    .local v3, "p":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 84
    .local v5, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/notification/NotificationBlackWhiteList;->getAppFlagByPkgName(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "flag":I
    .end local v3    # "p":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "mPreInstalled":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mPresetUtil:Lcom/android/server/notification/PreInstalledListUtil;

    invoke-virtual {v7}, Lcom/android/server/notification/PreInstalledListUtil;->getList()Ljava/util/ArrayList;

    move-result-object v2

    .line 89
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 90
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/notification/NotificationBlackWhiteList;->getAppFlagByPkgName(Ljava/lang/String;)I

    move-result v0

    .line 92
    .restart local v0    # "flag":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "flag":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v6
.end method

.method private handleNotifyDbChange()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;-><init>(Lcom/android/server/notification/NotificationBlackWhiteList;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 48
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/notification/NotificationBlackWhiteList;->initWhiteList()V

    .line 58
    new-instance v0, Lcom/android/server/notification/NotificationSettingObserver;

    iget-object v1, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationSettingObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    .local v0, "mObserver":Lcom/android/server/notification/NotificationSettingObserver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/NotificationBlackWhiteList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    return-void
.end method

.method private initWhiteList()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;-><init>(Lcom/android/server/notification/NotificationBlackWhiteList;Lcom/android/server/notification/NotificationBlackWhiteList$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method


# virtual methods
.method public isAllowNotify(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v2, p0, Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 72
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 75
    .local v0, "isAllow":Z
    :cond_1
    goto :goto_0
.end method
