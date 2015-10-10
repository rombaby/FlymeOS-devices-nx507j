.class final Lcn/jpush/android/service/f;
.super Landroid/os/Handler;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field final synthetic a:Lcn/jpush/android/service/DownloadService;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "Kr\n \u001b|\u0016* \u00078X&5IoY;*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x69

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

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/f;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x18

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x36

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x49

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x41

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcn/jpush/android/service/DownloadService;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcn/jpush/android/service/f;->a:Lcn/jpush/android/service/DownloadService;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcn/jpush/android/service/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcn/jpush/android/service/f;->b:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/service/f;->z:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
