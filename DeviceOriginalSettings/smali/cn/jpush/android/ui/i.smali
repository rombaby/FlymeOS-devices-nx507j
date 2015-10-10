.class final Lcn/jpush/android/ui/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/PushActivity;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/PushActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0, v4}, Lcn/jpush/android/ui/PushActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1, v2, v3}, Lcn/jpush/android/ui/i;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/PushActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v5, v2, v3}, Lcn/jpush/android/ui/i;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/PushActivity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v6, v2, v3}, Lcn/jpush/android/ui/i;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->d(Lcn/jpush/android/ui/PushActivity;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->e(Lcn/jpush/android/ui/PushActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->e(Lcn/jpush/android/ui/PushActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0}, Lcn/jpush/android/ui/PushActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/jpush/android/util/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0}, Lcn/jpush/android/ui/PushActivity;->a(Lcn/jpush/android/ui/PushActivity;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/ui/i;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
