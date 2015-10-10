.class final Lcn/jpush/android/service/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jpush/android/service/DownloadService;


# direct methods
.method constructor <init>(Lcn/jpush/android/service/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/e;->a:Lcn/jpush/android/service/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcn/jpush/android/service/e;->a:Lcn/jpush/android/service/DownloadService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->b(Landroid/content/Context;I)V

    return-void
.end method
