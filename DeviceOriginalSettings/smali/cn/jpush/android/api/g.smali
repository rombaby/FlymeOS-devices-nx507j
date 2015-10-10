.class final Lcn/jpush/android/api/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/jpush/android/api/e;


# direct methods
.method constructor <init>(Lcn/jpush/android/api/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/api/g;->b:Lcn/jpush/android/api/e;

    iput-object p2, p0, Lcn/jpush/android/api/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/api/g;->b:Lcn/jpush/android/api/e;

    iget-object v1, p0, Lcn/jpush/android/api/g;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/jpush/android/api/e;->b(Lcn/jpush/android/api/e;Landroid/content/Context;)V

    return-void
.end method
