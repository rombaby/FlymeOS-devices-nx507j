.class final Lcn/jpush/android/util/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/content/Context;

.field b:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jpush/android/util/ad;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/util/ad;->b:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/util/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/util/ad;->b:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcn/jpush/android/util/ac;->b(Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void
.end method
