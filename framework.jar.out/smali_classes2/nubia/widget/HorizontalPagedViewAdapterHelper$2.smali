.class Lnubia/widget/HorizontalPagedViewAdapterHelper$2;
.super Ljava/lang/Object;
.source "HorizontalPagedViewAdapterHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 111
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$2;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v7, p1

    check-cast v7, Landroid/widget/GridView;

    .line 117
    .local v7, "grid":Landroid/widget/GridView;
    invoke-virtual {v7}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lnubia/widget/HorizontalPagedAdapter;

    .line 120
    .local v6, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$2;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    # getter for: Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->access$200(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$2;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    # getter for: Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->access$200(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    invoke-virtual {v6, p3}, Lnubia/widget/HorizontalPagedAdapter;->getItemRealPosition(I)I

    move-result v3

    invoke-virtual {v6, p3}, Lnubia/widget/HorizontalPagedAdapter;->getItemRealId(I)J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
