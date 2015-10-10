.class public final Lcn/jpush/android/api/k;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    sput-boolean v3, Lcn/jpush/android/api/k;->b:Z

    sput-boolean v2, Lcn/jpush/android/api/k;->a:Z

    const-string v0, "\u8b82\u5741\u60c4\u6bfa\u4e204\n\u0018\\|\u001c\u001d\u0015\u76b1e\u001b;\tF\u007f\u0018\u000cD\u001c\u5486\u001a\u0007<T\u007f\u0006\u000cD\u001c\u768e\u0006\u001c\u001cPx]@\u5462\u8c36\u7522\u768d\u511a\u7eb3\u8b94\u65b3\u6ca0\uff73&e\u007f\u0006\u0001%[~\u0010\u001b\nTi\u0010G\u0003[X\u0010\u001a\u0019Xo]@L\u54b9*?9\u0019Fb<\u0007\u0018Px\u0013\u0008\u000fP$\u001a\u0007<T\u007f\u0006\u000cD\u001c"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0xa

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :pswitch_0
    const/16 v5, 0x75

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x69

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x6c

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x35

    goto :goto_1

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/k;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jpush/android/api/k;->d:Ljava/util/HashMap;

    sput-object v7, Lcn/jpush/android/api/k;->e:Ljava/lang/String;

    sput-object v7, Lcn/jpush/android/api/k;->f:Ljava/lang/String;

    sput-object v7, Lcn/jpush/android/api/k;->g:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/api/k;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcn/jpush/android/api/l;

    invoke-direct {v0}, Lcn/jpush/android/api/l;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/api/k;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/api/k;->b:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/api/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/api/k;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/api/k;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcn/jpush/android/api/k;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/api/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/api/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/api/k;->e:Ljava/lang/String;

    return-object v0
.end method
