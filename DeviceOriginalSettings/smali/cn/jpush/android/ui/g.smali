.class final Lcn/jpush/android/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/jpush/android/ui/PushActivity;


# direct methods
.method constructor <init>(Lcn/jpush/android/ui/PushActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/ui/g;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/ui/g;->a:Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    return-void
.end method
