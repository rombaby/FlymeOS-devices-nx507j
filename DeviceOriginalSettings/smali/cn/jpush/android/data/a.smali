.class public final Lcn/jpush/android/data/a;
.super Lcn/jpush/android/data/d;


# instance fields
.field public a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/data/d;-><init>()V

    return-void
.end method

.method public static a(Lcn/jpush/android/data/a;)Lcn/jpush/android/data/d;
    .locals 2

    new-instance v0, Lcn/jpush/android/data/b;

    invoke-direct {v0}, Lcn/jpush/android/data/b;-><init>()V

    iget-object v1, p0, Lcn/jpush/android/data/a;->n:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->n:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->m:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->m:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->i:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->i:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->j:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->k:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->k:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->l:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->l:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->T:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->T:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/a;->V:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/d;->V:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jpush/android/data/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/data/d;->a(Z)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
