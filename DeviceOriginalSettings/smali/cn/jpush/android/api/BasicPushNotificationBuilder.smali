.class public Lcn/jpush/android/api/BasicPushNotificationBuilder;
.super Lcn/jpush/android/api/DefaultPushNotificationBuilder;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field protected a:Landroid/content/Context;

.field public developerArg0:Ljava/lang/String;

.field public notificationDefaults:I

.field public notificationFlags:I

.field public statusBarDrawable:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, "BH>^wor\u001cf2ti"

    const/4 v0, -0x1

    move-object v7, v6

    move-object v8, v6

    move v6, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v9, v5

    if-gt v9, v2, :cond_2

    move v10, v1

    :cond_0
    move-object v11, v5

    move v12, v10

    move v15, v9

    move-object v9, v5

    move v5, v15

    :goto_1
    aget-char v14, v9, v10

    rem-int/lit8 v13, v12, 0x5

    packed-switch v13, :pswitch_data_0

    const/16 v13, 0x57

    :goto_2
    xor-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    if-nez v5, :cond_1

    move-object v9, v11

    move v12, v10

    move v10, v5

    goto :goto_1

    :cond_1
    move v9, v5

    move-object v5, v11

    :goto_3
    if-gt v9, v10, :cond_0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    packed-switch v0, :pswitch_data_1

    aput-object v5, v7, v6

    const-string v0, "SB-M\u0008"

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "n|\u0001{4SB-M\u0008"

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, "n|\u0001{4"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "oh\u0001f8a"

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    return-void

    :pswitch_4
    const/16 v13, 0xc

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x1d

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x72

    goto :goto_2

    :pswitch_7
    const/16 v13, 0x12

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    const/16 v0, 0x10

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    sget v0, Lcn/jpush/android/a;->a:I

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 4

    sget-object v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    sget-object v2, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a([Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v2, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/jpush/android/api/CustomPushNotificationBuilder;

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/jpush/android/api/CustomPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/jpush/android/api/BasicPushNotificationBuilder;

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    return-object v0
.end method

.method final a(Landroid/app/Notification;)V
    .locals 1

    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    iput v0, p1, Landroid/app/Notification;->defaults:I

    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    iput v0, p1, Landroid/app/Notification;->flags:I

    iget v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    iput v0, p1, Landroid/app/Notification;->icon:I

    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    const/4 v0, 0x4

    aget-object v0, p1, v0

    iput-object v0, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationDefaults:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->notificationFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->statusBarDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/api/BasicPushNotificationBuilder;->developerArg0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/BasicPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
