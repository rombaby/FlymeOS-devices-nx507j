.class Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HorizontalPagedViewAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/HorizontalPagedViewAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;


# direct methods
.method constructor <init>(Lnubia/widget/HorizontalPagedViewAdapterHelper;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->notifyDataSetChanged()V

    .line 271
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewAdapterHelper$AdapterDataSetObserver;->this$0:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->notifyDataSetInvalidated()V

    .line 277
    return-void
.end method
