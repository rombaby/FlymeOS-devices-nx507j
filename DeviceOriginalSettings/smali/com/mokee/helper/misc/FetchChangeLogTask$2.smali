.class Lcom/mokee/helper/misc/FetchChangeLogTask$2;
.super Ljava/lang/Object;
.source "FetchChangeLogTask.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/misc/FetchChangeLogTask;->fetchChangeLog(Lcom/mokee/helper/misc/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;


# direct methods
.method constructor <init>(Lcom/mokee/helper/misc/FetchChangeLogTask;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$2;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 130
    const-string v0, "Error: "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$2;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    # getter for: Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mokee/helper/misc/FetchChangeLogTask;->access$100(Lcom/mokee/helper/misc/FetchChangeLogTask;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$2;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    # getter for: Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mokee/helper/misc/FetchChangeLogTask;->access$100(Lcom/mokee/helper/misc/FetchChangeLogTask;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$2;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    # getter for: Lcom/mokee/helper/misc/FetchChangeLogTask;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mokee/helper/misc/FetchChangeLogTask;->access$100(Lcom/mokee/helper/misc/FetchChangeLogTask;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$2;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    # getter for: Lcom/mokee/helper/misc/FetchChangeLogTask;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mokee/helper/misc/FetchChangeLogTask;->access$200(Lcom/mokee/helper/misc/FetchChangeLogTask;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0052

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 135
    :cond_0
    return-void
.end method
