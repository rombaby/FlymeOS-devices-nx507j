.class final Lcn/jpush/android/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcn/jpush/android/ui/ListViewActivity;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/ListViewActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/e;->b:Lcn/jpush/android/ui/ListViewActivity;

    iput-object p2, p0, Lcn/jpush/android/ui/e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/jpush/android/ui/e;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    iput-boolean v2, v0, Lcn/jpush/android/data/d;->q:Z

    iget-object v1, p0, Lcn/jpush/android/ui/e;->b:Lcn/jpush/android/ui/ListViewActivity;

    invoke-static {v1, v0, v2}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/ui/e;->b:Lcn/jpush/android/ui/ListViewActivity;

    invoke-virtual {v1, v0}, Lcn/jpush/android/ui/ListViewActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
