.class public Lcn/jpush/android/service/DownloadService;
.super Landroid/app/IntentService;


# static fields
.field public static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcn/jpush/android/data/d;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/os/Bundle;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private c:Landroid/app/NotificationManager;

.field private d:Lcn/jpush/android/data/d;

.field private e:Lcn/jpush/android/service/f;

.field private f:Landroid/app/Notification;

.field private g:Landroid/widget/RemoteViews;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x16

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "c\u0017p@"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x4e

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\u66f5\u65c8\u725c\u6715\u5dbc\u4e0a\u8f05\u5b98\u6bec\uff42\u8bf6\u70c1\u51ef\u5bb0\u888b\u3003"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "b\u0016:S>t\u000b|\u0017/o\u001cfV\'eV}W:d\u0016`\u0017\u0000N,]\u007f\u0007B9@p\u0001O\']w\u001dU9Xu\u0011B4]z\u0005D<"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u5b88\u88bd\u5311\u5dcb\u4e45\u8f7c\u5bf4\u6bc1\uff35\u8bb9\u70b8\u5183\u5b9d\u88fc\u304c"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u4e0a\u8f05\u4e39\u0017`/X"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "R\u000cuK:h\u0016s\u0019:nXpV9o\u0014{X*!U4T+r\u000bu^+H\u001c."

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "D\u0000qZ;u\u001d4V\"eXpV9o\u0014{X*!\u000cuJ%!U4J\'{\u001d."

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "E\u0017cW\"n\u0019pj+s\u000e}Z+"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "q\n{^<d\u000bgf,`\n"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "o\u0017`P(h\u001buM\'n\u0016KU/x\u0017aM"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "S\\xX7n\r`"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "u\u0011`U+"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "o\u0017`P(h\u001buM\'n\u0016"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "u\u001dlM\u0011q\n{^<d\u000bg"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "h\u001b{W"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "S\\}]"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "o\u0017`f/t\u000c{K;o"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "O\u00174\\ eXzV:h\u001e}Z/u\u0011{W`!\u0011g\u0019(h\u0014qi/u\u00104\\#q\u000cm\u0019q!U4"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "l\u0017aW:d\u001c"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u5f52\u5235\u7f45\u7ee5\u4e43\u53ee\u7550\u3016\u7a34\u5440\u4f1b\u7e9f\u7ef9\u4e32\u8f33\uff00"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u4e0a\u8f05\u5925\u8d1c\u304c\u8bf6\u7a75\u541a\u7080\u51b5\u91cc\u65c8\u4e1f\u8f44\uff4f"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u4e0a\u8f05\u8d50\u6ea9\u597f\u6549\u307a\u8be3\u7a34\u5440\u70b8\u5183\u91d9\u6589\u4e45\u8f7c\uff79"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void

    :pswitch_15
    const/4 v9, 0x1

    goto/16 :goto_2

    :pswitch_16
    const/16 v9, 0x78

    goto/16 :goto_2

    :pswitch_17
    const/16 v9, 0x14

    goto/16 :goto_2

    :pswitch_18
    const/16 v9, 0x39

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->h:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->i:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->j:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->k:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->l:Ljava/lang/Integer;

    new-instance v0, Lcn/jpush/android/service/e;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/e;-><init>(Lcn/jpush/android/service/DownloadService;)V

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/service/DownloadService;)Lcn/jpush/android/data/d;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcn/jpush/android/data/d;->M:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    sget-object v2, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Lcn/jpush/android/data/d;IJJ)V
    .locals 7

    const/high16 v6, 0x8000000

    const/4 v4, 0x4

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->defaults:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_0
    iget-object v1, p1, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    long-to-float v2, p3

    long-to-float v3, p5

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcn/jpush/android/service/DownloadService;->l:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/jpush/android/service/DownloadService;->l:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/jpush/android/service/DownloadService;->l:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcn/jpush/android/service/DownloadService;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lcn/jpush/android/a;->a:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->g:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->c:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/service/DownloadService;->f:Landroid/app/Notification;

    invoke-virtual {v3, p0, v1, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Lcn/jpush/android/data/d;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->c()Z

    move-result v4

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    iput-object v1, p1, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcn/jpush/android/api/m;->a(Lcn/jpush/android/data/d;I)I

    move-result v1

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/data/d;ZZ)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/jpush/android/service/DownloadService;->c:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_0
    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iput-object v1, p1, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;Z)Landroid/content/Intent;

    move-result-object v2

    move v5, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_1
.end method

.method static synthetic a(Lcn/jpush/android/service/DownloadService;ILcn/jpush/android/data/d;I)V
    .locals 9

    const/4 v1, 0x2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcn/jpush/android/data/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne v1, p3, :cond_3

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    :goto_1
    iget-object v2, p2, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p3}, Lcn/jpush/android/service/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcn/jpush/android/service/DownloadService;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v4, -0x1

    iput v4, p2, Lcn/jpush/android/data/d;->P:I

    sget-object v4, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    const v5, 0x1080082

    iput v5, v4, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    iput v0, v4, Landroid/app/Notification;->flags:I

    const/high16 v0, 0x8000000

    invoke-static {p0, p1, v3, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->c:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v2, p3, :cond_4

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v0, v0, v2

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_1
.end method

.method static synthetic a(Lcn/jpush/android/service/DownloadService;Lcn/jpush/android/data/d;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcn/jpush/android/data/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcn/jpush/android/data/l;

    iget-boolean v1, v0, Lcn/jpush/android/data/l;->aa:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcn/jpush/android/data/l;->W:Ljava/lang/String;

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcn/jpush/android/data/l;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, v0, Lcn/jpush/android/data/l;->a:Ljava/lang/String;

    :cond_2
    invoke-static {p0, p1, v2, v1}, Lcn/jpush/android/data/c;->a(Landroid/content/Context;Lcn/jpush/android/data/d;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcn/jpush/android/data/l;->Y:Z

    iget v2, v0, Lcn/jpush/android/data/l;->Z:I

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcn/jpush/android/data/p;->a(ZILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/data/d;Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    goto :goto_2

    :cond_4
    const-string v2, ""

    goto :goto_3

    :cond_5
    iget-boolean v1, v0, Lcn/jpush/android/data/l;->af:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v6}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/data/d;Z)V

    :cond_6
    iget-boolean v1, v0, Lcn/jpush/android/data/l;->ag:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcn/jpush/android/util/a;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    iget-boolean v1, v0, Lcn/jpush/android/data/l;->af:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcn/jpush/android/data/l;->ag:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcn/jpush/android/data/d;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1, v6}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/data/d;Z)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/service/DownloadService;Lcn/jpush/android/data/d;IJJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/data/d;IJJ)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcn/jpush/android/service/DownloadService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcn/jpush/android/service/DownloadService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->c:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lcn/jpush/android/service/f;

    invoke-virtual {p0}, Lcn/jpush/android/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/jpush/android/service/f;-><init>(Lcn/jpush/android/service/DownloadService;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->e:Lcn/jpush/android/service/f;

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->c:Landroid/app/NotificationManager;

    sget-object v0, Lcn/jpush/android/service/DownloadService;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcn/jpush/android/service/DownloadService;->b:Landroid/os/Bundle;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->l:Ljava/lang/Integer;

    :cond_1
    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->h:Ljava/lang/Integer;

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->i:Ljava/lang/Integer;

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->j:Ljava/lang/Integer;

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->k:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    iput-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/DownloadService;->z:[Ljava/lang/String;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->e:Lcn/jpush/android/service/f;

    invoke-virtual {v0, v9}, Lcn/jpush/android/service/f;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    iget-boolean v0, v0, Lcn/jpush/android/data/d;->N:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    iget-boolean v0, v0, Lcn/jpush/android/data/d;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    iget-object v0, v0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    const/16 v1, 0x3f4

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_3
    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/jpush/android/service/DownloadService;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    invoke-static {v0, v8}, Lcn/jpush/android/api/m;->a(Lcn/jpush/android/data/d;I)I

    move-result v3

    iget-object v2, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    invoke-virtual {v2}, Lcn/jpush/android/data/d;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v8

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/Thread;->setPriority(I)V

    new-instance v0, Lcn/jpush/android/service/a;

    iget-object v2, p0, Lcn/jpush/android/service/DownloadService;->d:Lcn/jpush/android/data/d;

    sget-object v6, Lcn/jpush/android/service/DownloadService;->b:Landroid/os/Bundle;

    new-instance v4, Lcn/jpush/android/service/d;

    invoke-direct {v4, p0, v1, v3}, Lcn/jpush/android/service/d;-><init>(Lcn/jpush/android/service/DownloadService;ZI)V

    const/16 v5, 0xbb8

    move-object v1, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcn/jpush/android/service/a;-><init>(Landroid/content/Context;Lcn/jpush/android/data/d;Landroid/os/Bundle;Lcn/jpush/android/service/c;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcn/jpush/android/data/d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v2

    check-cast v0, Lcn/jpush/android/data/l;

    iget-boolean v1, v0, Lcn/jpush/android/data/l;->Y:Z

    iget v0, v0, Lcn/jpush/android/data/l;->Z:I

    invoke-static {v1, v0, p0}, Lcn/jpush/android/data/p;->a(ZILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcn/jpush/android/service/DownloadService;->a(Lcn/jpush/android/data/d;IJJ)V

    move v0, v9

    :goto_2
    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcn/jpush/android/data/d;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    move v1, v8

    goto :goto_1

    :cond_7
    move v0, v8

    goto :goto_2

    :cond_8
    move v1, v9

    goto :goto_1

    :cond_9
    move v0, v9

    goto :goto_2
.end method
