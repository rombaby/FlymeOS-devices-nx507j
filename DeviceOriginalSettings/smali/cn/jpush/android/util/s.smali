.class final Lcn/jpush/android/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/jpush/android/util/JRecorder;


# direct methods
.method constructor <init>(Lcn/jpush/android/util/JRecorder;I)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/util/s;->b:Lcn/jpush/android/util/JRecorder;

    iput p2, p0, Lcn/jpush/android/util/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/jpush/android/util/s;->b:Lcn/jpush/android/util/JRecorder;

    iget v1, p0, Lcn/jpush/android/util/s;->a:I

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcn/jpush/android/util/JRecorder;->a(Lcn/jpush/android/util/JRecorder;D)V

    return-void
.end method
