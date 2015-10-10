.class final Lcn/jpush/android/util/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jpush/android/util/JRecorder;->a(Z)Z

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {}, Lcn/jpush/android/util/JRecorder;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/JRecorder;->a(Landroid/content/Context;)V

    return-void
.end method
