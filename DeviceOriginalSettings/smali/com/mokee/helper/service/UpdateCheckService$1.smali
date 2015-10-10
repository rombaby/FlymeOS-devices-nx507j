.class Lcom/mokee/helper/service/UpdateCheckService$1;
.super Ljava/lang/Object;
.source "UpdateCheckService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/service/UpdateCheckService;->recordAvailableUpdates(Ljava/util/LinkedList;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mokee/helper/misc/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/service/UpdateCheckService;


# direct methods
.method constructor <init>(Lcom/mokee/helper/service/UpdateCheckService;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mokee/helper/service/UpdateCheckService$1;->this$0:Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mokee/helper/misc/ItemInfo;Lcom/mokee/helper/misc/ItemInfo;)I
    .locals 4
    .param p1, "lhs"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p2, "rhs"    # Lcom/mokee/helper/misc/ItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    .local v0, "lhsDate":I
    invoke-virtual {p2}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, "rhsDate":I
    if-ne v0, v1, :cond_0

    .line 187
    :goto_0
    return v2

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Lcom/mokee/helper/misc/ItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/mokee/helper/misc/ItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/mokee/helper/service/UpdateCheckService$1;->compare(Lcom/mokee/helper/misc/ItemInfo;Lcom/mokee/helper/misc/ItemInfo;)I

    move-result v0

    return v0
.end method
