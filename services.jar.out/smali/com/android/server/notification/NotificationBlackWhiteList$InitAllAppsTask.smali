.class Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;
.super Landroid/os/AsyncTask;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationBlackWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitAllAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationBlackWhiteList;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationBlackWhiteList;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationBlackWhiteList;Lcom/android/server/notification/NotificationBlackWhiteList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationBlackWhiteList;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationBlackWhiteList$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;-><init>(Lcom/android/server/notification/NotificationBlackWhiteList;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # invokes: Lcom/android/server/notification/NotificationBlackWhiteList;->getInstalledAppsFlag()Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$200(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # getter for: Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$300(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 152
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$InitAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # getter for: Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$300(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    :cond_0
    return-void
.end method
