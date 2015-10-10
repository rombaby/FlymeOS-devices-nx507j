.class final Lcn/jpush/android/service/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jpush/android/service/a;

.field private b:Lcn/jpush/android/service/c;


# direct methods
.method public constructor <init>(Lcn/jpush/android/service/a;Landroid/os/Looper;Lcn/jpush/android/service/c;)V
    .locals 1

    iput-object p1, p0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/service/b;->b:Lcn/jpush/android/service/c;

    iput-object p3, p0, Lcn/jpush/android/service/b;->b:Lcn/jpush/android/service/c;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/a;

    iget-boolean v0, v0, Lcn/jpush/android/service/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/b;->b:Lcn/jpush/android/service/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/b;->b:Lcn/jpush/android/service/c;

    iget-object v1, p0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/a;

    invoke-static {v1}, Lcn/jpush/android/service/a;->a(Lcn/jpush/android/service/a;)J

    move-result-wide v2

    iget-object v1, p0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/a;

    invoke-static {v1}, Lcn/jpush/android/service/a;->b(Lcn/jpush/android/service/a;)J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcn/jpush/android/service/c;->a(JJ)V

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/b;->a:Lcn/jpush/android/service/a;

    invoke-static {v0}, Lcn/jpush/android/service/a;->c(Lcn/jpush/android/service/a;)Lcn/jpush/android/service/b;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/jpush/android/service/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
