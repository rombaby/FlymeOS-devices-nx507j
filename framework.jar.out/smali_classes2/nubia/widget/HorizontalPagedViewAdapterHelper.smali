.class public Lnubia/widget/HorizontalPagedViewAdapterHelper;
.super Ljava/lang/Object;
.source "HorizontalPagedViewAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;
    }
.end annotation


# static fields
.field private static final ITEM_NUM_MAX_ON_PAGE:I = 0x9

.field private static final TYPE_CHANGED:I = 0x0

.field private static final TYPE_INVALIDATED:I = 0x1


# instance fields
.field mAdapterBase:Landroid/widget/ListAdapter;

.field mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mItemLongClickListenerInner:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;

    invoke-direct {v0, p0}, Lnubia/widget/HorizontalPagedViewAdapterHelper$1;-><init>(Lnubia/widget/HorizontalPagedViewAdapterHelper;)V

    iput-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

    .line 111
    new-instance v0, Lnubia/widget/HorizontalPagedViewAdapterHelper$2;

    invoke-direct {v0, p0}, Lnubia/widget/HorizontalPagedViewAdapterHelper$2;-><init>(Lnubia/widget/HorizontalPagedViewAdapterHelper;)V

    iput-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemLongClickListenerInner:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 27
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/HorizontalPagedViewAdapterHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/HorizontalPagedViewAdapterHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/HorizontalPagedViewAdapterHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/HorizontalPagedViewAdapterHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private createGrid(Landroid/content/Context;III)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nStart"    # I
    .param p3, "nEnd"    # I
    .param p4, "nPage"    # I

    .prologue
    .line 139
    new-instance v0, Lnubia/widget/HorizontalPagedAdapter;

    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    invoke-direct {v0, v2, p2, p3, p4}, Lnubia/widget/HorizontalPagedAdapter;-><init>(Landroid/widget/ListAdapter;III)V

    .line 142
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v2, 0x3030021

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/GridView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 145
    .local v1, "view":Landroid/widget/GridView;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setTag(Ljava/lang/Object;)V

    .line 148
    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemClickListenerInner:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemLongClickListenerInner:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 150
    return-object v1
.end method

.method private createViewsByAdapter(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    if-nez v5, :cond_1

    .line 77
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 59
    .local v0, "nCount":I
    if-eqz v0, :cond_0

    .line 64
    const/4 v4, 0x0

    .local v4, "nStart":I
    const/4 v1, 0x0

    .line 65
    .local v1, "nItemCount":I
    const/4 v2, 0x0

    .local v2, "nPage":I
    move v3, v2

    .line 66
    .end local v2    # "nPage":I
    .local v3, "nPage":I
    :goto_0
    if-lez v0, :cond_0

    .line 67
    const/16 v5, 0x9

    if-ge v0, v5, :cond_2

    .line 68
    move v1, v0

    .line 72
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    add-int v6, v4, v1

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "nPage":I
    .restart local v2    # "nPage":I
    invoke-direct {p0, v5, v4, v6, v3}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->createGrid(Landroid/content/Context;III)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    sub-int/2addr v0, v1

    .line 75
    add-int/2addr v4, v1

    move v3, v2

    .end local v2    # "nPage":I
    .restart local v3    # "nPage":I
    goto :goto_0

    .line 70
    :cond_2
    const/16 v1, 0x9

    goto :goto_1
.end method

.method private notifyDataSet(I)V
    .locals 5
    .param p1, "nType"    # I

    .prologue
    .line 241
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 245
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 246
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 247
    .local v3, "view":Landroid/widget/GridView;
    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnubia/widget/HorizontalPagedAdapter;

    .line 249
    .local v0, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    if-nez p1, :cond_1

    .line 250
    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedAdapter;->notifyDataSetChanged()V

    .line 245
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 252
    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 255
    .end local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .end local v3    # "view":Landroid/widget/GridView;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCheckedItemPosition()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 191
    iget-object v6, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 196
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 197
    iget-object v6, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 198
    .local v4, "view":Landroid/widget/GridView;
    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnubia/widget/HorizontalPagedAdapter;

    .line 200
    .local v0, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    invoke-virtual {v4}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    .line 202
    .local v3, "position":I
    if-eq v3, v5, :cond_1

    .line 203
    invoke-virtual {v0, v3}, Lnubia/widget/HorizontalPagedAdapter;->getItemRealPosition(I)I

    move-result v5

    .line 207
    .end local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .end local v3    # "position":I
    .end local v4    # "view":Landroid/widget/GridView;
    :cond_0
    return v5

    .line 196
    .restart local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .restart local v3    # "position":I
    .restart local v4    # "view":Landroid/widget/GridView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemPage(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 174
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 179
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 180
    .local v3, "view":Landroid/widget/GridView;
    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnubia/widget/HorizontalPagedAdapter;

    .line 182
    .local v0, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedAdapter;->isOnPage(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    .end local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .end local v2    # "i":I
    .end local v3    # "view":Landroid/widget/GridView;
    :goto_1
    return v2

    .line 178
    .restart local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .restart local v2    # "i":I
    .restart local v3    # "view":Landroid/widget/GridView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .end local v3    # "view":Landroid/widget/GridView;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->notifyDataSet(I)V

    .line 259
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->notifyDataSet(I)V

    .line 263
    return-void
.end method

.method public registerDataSetObserver()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;-><init>(Lnubia/widget/HorizontalPagedViewAdapterHelper;)V

    iput-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    .line 47
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/view/ViewGroup;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 31
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->unregisterDataSetObserver()V

    .line 32
    iput-object p2, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    .line 33
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->createViewsByAdapter(Landroid/view/ViewGroup;)V

    .line 34
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->registerDataSetObserver()V

    .line 35
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 4
    .param p1, "choiceMode"    # I

    .prologue
    .line 228
    iget-object v3, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 232
    iget-object v3, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 233
    .local v2, "view":Landroid/widget/GridView;
    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "view":Landroid/widget/GridView;
    :cond_0
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 154
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 158
    .local v1, "count":I
    invoke-virtual {p0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->getItemPage(I)I

    move-result v3

    .line 160
    .local v3, "nSelPage":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 161
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridView;

    .line 162
    .local v4, "view":Landroid/widget/GridView;
    invoke-virtual {v4}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnubia/widget/HorizontalPagedAdapter;

    .line 164
    .local v0, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    if-ne v3, v2, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedAdapter;->getItemPagePosition(I)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 160
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v4}, Landroid/widget/GridView;->clearChoices()V

    goto :goto_1

    .line 171
    .end local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .end local v4    # "view":Landroid/widget/GridView;
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 131
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 132
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 135
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 136
    return-void
.end method

.method public setSelection(II)V
    .locals 6
    .param p1, "nPage"    # I
    .param p2, "position"    # I

    .prologue
    .line 211
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 215
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 216
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 217
    .local v3, "view":Landroid/widget/GridView;
    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lnubia/widget/HorizontalPagedAdapter;

    .line 219
    .local v0, "adpater":Lnubia/widget/HorizontalPagedAdapter;
    if-ne p1, v2, :cond_0

    .line 220
    invoke-virtual {v0, p2}, Lnubia/widget/HorizontalPagedAdapter;->getItemPagePosition(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 215
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v3}, Landroid/widget/GridView;->clearChoices()V

    goto :goto_1

    .line 225
    .end local v0    # "adpater":Lnubia/widget/HorizontalPagedAdapter;
    .end local v3    # "view":Landroid/widget/GridView;
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mAdapterBase:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper;->mDataSetObserver:Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;

    .line 42
    :cond_0
    return-void
.end method
