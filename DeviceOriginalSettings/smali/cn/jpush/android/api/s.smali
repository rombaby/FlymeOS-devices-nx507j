.class final Lcn/jpush/android/api/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/WindowManager;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Landroid/widget/ImageButton;

.field final synthetic d:Lcn/jpush/android/api/r;


# direct methods
.method constructor <init>(Lcn/jpush/android/api/r;Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/api/s;->d:Lcn/jpush/android/api/r;

    iput-object p2, p0, Lcn/jpush/android/api/s;->a:Landroid/view/WindowManager;

    iput-object p3, p0, Lcn/jpush/android/api/s;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcn/jpush/android/api/s;->c:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/api/s;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jpush/android/api/s;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/api/s;->c:Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/api/q;->a(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    return-void
.end method
