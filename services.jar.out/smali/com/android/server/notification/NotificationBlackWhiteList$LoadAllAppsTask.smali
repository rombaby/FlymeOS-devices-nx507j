.class public Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;
.super Landroid/os/AsyncTask;
.source "NotificationBlackWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationBlackWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadAllAppsTask"
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
.method public constructor <init>(Lcom/android/server/notification/NotificationBlackWhiteList;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

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
    .line 161
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # invokes: Lcom/android/server/notification/NotificationBlackWhiteList;->getAllAppsFlag()Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$400(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->onPostExecute(Ljava/util/Map;)V

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
    .line 166
    .local p1, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # getter for: Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$300(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/server/notification/NotificationBlackWhiteList$LoadAllAppsTask;->this$0:Lcom/android/server/notification/NotificationBlackWhiteList;

    # getter for: Lcom/android/server/notification/NotificationBlackWhiteList;->mFlags:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/notification/NotificationBlackWhiteList;->access$300(Lcom/android/server/notification/NotificationBlackWhiteList;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 170
    :cond_0
    return-void
.end method
