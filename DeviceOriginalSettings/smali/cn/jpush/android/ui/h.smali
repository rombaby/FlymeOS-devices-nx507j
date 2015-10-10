.class final Lcn/jpush/android/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/PushActivity;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/PushActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/h;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/ui/h;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->a(Lcn/jpush/android/ui/PushActivity;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ee

    iget-object v2, p0, Lcn/jpush/android/ui/h;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/ui/h;->a:Lcn/jpush/android/ui/PushActivity;

    iget-object v1, p0, Lcn/jpush/android/ui/h;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v1}, Lcn/jpush/android/ui/PushActivity;->b(Lcn/jpush/android/ui/PushActivity;)Lcn/jpush/android/data/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;I)V

    iget-object v0, p0, Lcn/jpush/android/ui/h;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    return-void
.end method
