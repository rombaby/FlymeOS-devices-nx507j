.class final Lcn/jpush/android/data/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jpush/android/data/g;


# direct methods
.method constructor <init>(Lcn/jpush/android/data/g;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v0}, Lcn/jpush/android/data/g;->a(Lcn/jpush/android/data/g;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v0}, Lcn/jpush/android/data/g;->b(Lcn/jpush/android/data/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v0}, Lcn/jpush/android/data/g;->a(Lcn/jpush/android/data/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v1}, Lcn/jpush/android/data/g;->b(Lcn/jpush/android/data/g;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v0}, Lcn/jpush/android/data/g;->c(Lcn/jpush/android/data/g;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v0}, Lcn/jpush/android/data/g;->d(Lcn/jpush/android/data/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v0}, Lcn/jpush/android/data/g;->c(Lcn/jpush/android/data/g;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/data/h;->a:Lcn/jpush/android/data/g;

    invoke-static {v1}, Lcn/jpush/android/data/g;->d(Lcn/jpush/android/data/g;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
