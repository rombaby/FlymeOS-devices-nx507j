.class final Lcn/jpush/android/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/a;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/b;->a:Lcn/jpush/android/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/jpush/android/ui/b;->a:Lcn/jpush/android/ui/a;

    invoke-static {v0}, Lcn/jpush/android/ui/a;->a(Lcn/jpush/android/ui/a;)Lcn/jpush/android/ui/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/c;->sendEmptyMessage(I)Z

    return v1
.end method
