.class public Lcn/jpush/android/api/CustomPushNotificationBuilder;
.super Lcn/jpush/android/api/BasicPushNotificationBuilder;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field public layout:I

.field public layoutContentId:I

.field public layoutIconDrawable:I

.field public layoutIconId:I

.field public layoutTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "_4!4?Q\u001e\r\u001f\u000fc"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x50

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "c\u001e\r\u001f\u000f"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x3c

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x41

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x52

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x40

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/jpush/android/a;->a:I

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1

    invoke-direct {p0, p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;-><init>(Landroid/content/Context;)V

    sget v0, Lcn/jpush/android/a;->a:I

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    iput p2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    iput p3, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    iput p4, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    iput p5, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a([Ljava/lang/String;)V

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    const/4 v0, 0x6

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    const/4 v0, 0x7

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    const/16 v0, 0x8

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    const/16 v0, 0x9

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    return-void
.end method

.method final b(Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    iget-object v2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    iget v2, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutTitleId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutContentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jpush/android/api/CustomPushNotificationBuilder;->layoutIconDrawable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/CustomPushNotificationBuilder;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/api/CustomPushNotificationBuilder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
