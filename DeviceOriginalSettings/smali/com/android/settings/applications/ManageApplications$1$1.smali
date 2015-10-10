.class Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;)V
    .locals 0

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1269
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    # getter for: Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->mActivityResumed:Z
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->access$1200(Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    # getter for: Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->access$100(Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1272
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    # getter for: Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->access$100(Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;

    .line 1273
    .local v1, "tab":Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;
    iget-object v2, v1, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 1274
    iget-object v2, v1, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;->mApplications:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 1271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    .end local v1    # "tab":Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->mCurTab:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;

    if-eqz v2, :cond_2

    .line 1278
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    iget-object v2, v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->mCurTab:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$1;->this$0:Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    # getter for: Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->mSortOrder:I
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;->access$1300(Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1281
    .end local v0    # "i":I
    :cond_2
    return-void
.end method
