.class final Lcn/jpush/android/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/PushActivity;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/PushActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/j;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/j;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->f(Lcn/jpush/android/ui/PushActivity;)Lcn/jpush/android/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/j;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->f(Lcn/jpush/android/ui/PushActivity;)Lcn/jpush/android/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/ui/a;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/j;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->g(Lcn/jpush/android/ui/PushActivity;)V

    goto :goto_0
.end method
