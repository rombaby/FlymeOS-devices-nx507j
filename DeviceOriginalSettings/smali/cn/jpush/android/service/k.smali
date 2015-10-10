.class final Lcn/jpush/android/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/jpush/android/service/PushService;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v4, "[\u0018 \u0011>_\u001c1 )^\u00140"

    const/4 v0, -0x1

    move-object v6, v5

    move-object v7, v5

    move v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v8, v4

    if-gt v8, v2, :cond_2

    move v9, v1

    :cond_0
    move-object v10, v4

    move v11, v9

    move v14, v8

    move-object v8, v4

    move v4, v14

    :goto_1
    aget-char v13, v8, v9

    rem-int/lit8 v12, v11, 0x5

    packed-switch v12, :pswitch_data_0

    const/16 v12, 0x5d

    :goto_2
    xor-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v8, v9

    add-int/lit8 v9, v11, 0x1

    if-nez v4, :cond_1

    move-object v8, v10

    move v11, v9

    move v9, v4

    goto :goto_1

    :cond_1
    move v8, v4

    move-object v4, v10

    :goto_3
    if-gt v8, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_1

    aput-object v4, v6, v5

    const-string v0, "\u001bY9\u001e.CY9\u001e(Y\u001a=\u001a9\u0017\r<\u00128\r"

    move-object v4, v0

    move v5, v2

    move-object v6, v7

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v4, v6, v5

    const-string v0, "[\u00166\u001e1c\u00108\u001a}\u001aY9\u001e.C54\n3T\u0011\u0001\u00160RYh_"

    move-object v4, v0

    move v5, v3

    move-object v6, v7

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v4, v6, v5

    const/4 v4, 0x3

    const-string v0, "C\u00108\u001a}Y\u0016\"E"

    move v5, v4

    move-object v6, v7

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v4, v6, v5

    sput-object v7, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    return-void

    :pswitch_3
    const/16 v12, 0x37

    goto :goto_2

    :pswitch_4
    const/16 v12, 0x79

    goto :goto_2

    :pswitch_5
    const/16 v12, 0x55

    goto :goto_2

    :pswitch_6
    const/16 v12, 0x7f

    goto :goto_2

    :cond_2
    move v9, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method constructor <init>(Lcn/jpush/android/service/PushService;J)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/k;->b:Lcn/jpush/android/service/PushService;

    iput-wide p2, p0, Lcn/jpush/android/service/k;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v1, p0, Lcn/jpush/android/service/k;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const-wide/16 v6, -0x1

    invoke-static {v1, v4, v6, v7}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    sub-long v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcn/jpush/android/service/k;->a:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/k;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/a;->x(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcn/jpush/android/service/k;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v1, v5, v2, v3}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;J)V

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_1

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/k;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0, v2}, Lcn/jpush/android/service/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/k;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
