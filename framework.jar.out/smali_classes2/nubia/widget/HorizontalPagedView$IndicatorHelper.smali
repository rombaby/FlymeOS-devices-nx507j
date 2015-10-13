.class Lnubia/widget/HorizontalPagedView$IndicatorHelper;
.super Ljava/lang/Object;
.source "HorizontalPagedView.java"

# interfaces
.implements Lnubia/widget/HorizontalPageIndicatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/HorizontalPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorHelper"
.end annotation


# instance fields
.field mIndicator:Lnubia/widget/HorizontalPageIndicatorCallback;

.field final synthetic this$0:Lnubia/widget/HorizontalPagedView;


# direct methods
.method private constructor <init>(Lnubia/widget/HorizontalPagedView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->this$0:Lnubia/widget/HorizontalPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/widget/HorizontalPagedView;Lnubia/widget/HorizontalPagedView$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/widget/HorizontalPagedView;
    .param p2, "x1"    # Lnubia/widget/HorizontalPagedView$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedView$IndicatorHelper;-><init>(Lnubia/widget/HorizontalPagedView;)V

    return-void
.end method


# virtual methods
.method public setCurrentPage(I)V
    .locals 1
    .param p1, "nCurrent"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->mIndicator:Lnubia/widget/HorizontalPageIndicatorCallback;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->mIndicator:Lnubia/widget/HorizontalPageIndicatorCallback;

    invoke-interface {v0, p1}, Lnubia/widget/HorizontalPageIndicatorCallback;->setCurrentPage(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public setIndicator(Lnubia/widget/HorizontalPageIndicatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lnubia/widget/HorizontalPageIndicatorCallback;

    .prologue
    .line 270
    iput-object p1, p0, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->mIndicator:Lnubia/widget/HorizontalPageIndicatorCallback;

    .line 271
    return-void
.end method

.method public setPageCount(II)V
    .locals 1
    .param p1, "nCount"    # I
    .param p2, "nCurrent"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->mIndicator:Lnubia/widget/HorizontalPageIndicatorCallback;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->mIndicator:Lnubia/widget/HorizontalPageIndicatorCallback;

    invoke-interface {v0, p1, p2}, Lnubia/widget/HorizontalPageIndicatorCallback;->setPageCount(II)V

    .line 277
    :cond_0
    return-void
.end method
