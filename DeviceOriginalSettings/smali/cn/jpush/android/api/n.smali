.class final Lcn/jpush/android/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/jpush/android/data/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/api/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/api/n;->b:Lcn/jpush/android/data/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/api/n;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/api/n;->b:Lcn/jpush/android/data/d;

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->b(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    return-void
.end method
