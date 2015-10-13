.class Lnubia/widget/HorizontalPagedViewAdapterHelper$1;
.super Ljava/lang/Object;
.source "HorizontalPagedViewAdapterHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/HorizontalPagedViewAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;


# direct methods
.method constructor <init>(Lnubia/widget/HorizontalPagedViewAdapterHelper;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v9, p1

    check-cast v9, Landroid/widget/GridView;

    .line 87
    .local v9, "grid":Landroid/widget/GridView;
    invoke-virtual {v9}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lnubia/widget/HorizontalPagedAdapter;

    .line 89
    .local v6, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    # getter for: Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->access$000(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    # getter for: Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->access$000(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-virtual {v6, p3}, Lnubia/widget/HorizontalPagedAdapter;->getItemRealPosition(I)I

    move-result v3

    invoke-virtual {v6, p3}, Lnubia/widget/HorizontalPagedAdapter;->getItemRealId(I)J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 95
    :cond_0
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    # getter for: Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;
    invoke-static {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->access$100(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 98
    .local v8, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 99
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    # getter for: Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;
    invoke-static {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->access$100(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "grid":Landroid/widget/GridView;
    check-cast v9, Landroid/widget/GridView;

    .line 100
    .restart local v9    # "grid":Landroid/widget/GridView;
    invoke-virtual {v9}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lnubia/widget/HorizontalPagedAdapter;

    .line 102
    .local v7, "adpaterCur":Lnubia/widget/HorizontalPagedAdapter;
    if-eq v6, v7, :cond_1

    .line 103
    invoke-virtual {v9}, Landroid/widget/GridView;->clearChoices()V

    .line 98
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 106
    .end local v7    # "adpaterCur":Lnubia/widget/HorizontalPagedAdapter;
    :cond_2
    return-void
.end method
