.class public Lcn/jpush/android/api/DefaultPushNotificationBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jpush/android/api/PushNotificationBuilder;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "\u000erFkd4t\u0000lh!i\u000fje`~\tk\u007f%s\u0012%\u007f/=\u0015md73FBb6xFp{n"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0xb

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "#sHo{5n\u000e+j.y\u0014jb$3(J_\t[/FJ\u0014T)KT\u0003R(QN\u000eI9QB\u0014Q#"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "\u0004x\u0000d~,i6px(S\tqb&t\u0005d\u007f)r\u0008G~)q\u0002`y"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x40

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x1d

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x66

    goto :goto_2

    :pswitch_5
    const/4 v11, 0x5

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    :cond_2
    new-instance v0, Landroid/app/Notification;

    sget v2, Lcn/jpush/android/a;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {p0, v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->a(Landroid/app/Notification;)V

    iget-object v2, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Lcn/jpush/android/a;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0

    :cond_4
    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method a(Landroid/app/Notification;)V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
