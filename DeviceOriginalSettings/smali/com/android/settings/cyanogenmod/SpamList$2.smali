.class Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;
.super Landroid/database/ContentObserver;
.source "SpamList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;

    # getter for: Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->mTask:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->access$200(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;

    # getter for: Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->mTask:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->access$200(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;->cancel(Z)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$1;)V

    # setter for: Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->mTask:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->access$202(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;

    .line 115
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;

    # getter for: Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->mTask:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;->access$200(Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SpamList$FetchFilters;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    return-void
.end method
