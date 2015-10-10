.class final Lcn/jpush/android/data/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/jpush/android/data/q;->b:Landroid/content/Context;

    iput-object p3, p0, Lcn/jpush/android/data/q;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget-object v1, p0, Lcn/jpush/android/data/q;->a:Ljava/lang/String;

    const/4 v3, 0x5

    const-wide/16 v4, 0x1f40

    invoke-static {v1, v3, v4, v5}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/data/q;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/jpush/android/data/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/data/q;->c:Ljava/lang/String;

    const/16 v1, 0x3fd

    iget-object v2, p0, Lcn/jpush/android/data/q;->b:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/data/q;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/q;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/data/q;->c:Ljava/lang/String;

    const/16 v1, 0x3e4

    iget-object v2, p0, Lcn/jpush/android/data/q;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0
.end method
