.class final Lcn/jpush/android/api/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jpush/android/util/p;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Lcn/jpush/android/api/p;

.field final synthetic b:I

.field final synthetic c:Lcn/jpush/android/data/d;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v12, 0x4e

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "\u0008\'\"&p\u000f:&"

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

    move v14, v7

    move-object v7, v3

    move v3, v14

    :goto_1
    aget-char v13, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x20

    :goto_2
    xor-int/2addr v11, v13

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

    const-string v0, "\u0007=\u001d6C\r"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "\u0003+=0A\t+\u0007\'"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/api/o;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x6e

    goto :goto_2

    :pswitch_3
    move v11, v12

    goto :goto_2

    :pswitch_4
    move v11, v12

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x43

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

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

.method constructor <init>(Lcn/jpush/android/api/p;ILcn/jpush/android/data/d;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/api/o;->a:Lcn/jpush/android/api/p;

    iput p2, p0, Lcn/jpush/android/api/o;->b:I

    iput-object p3, p0, Lcn/jpush/android/api/o;->c:Lcn/jpush/android/data/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/jpush/android/api/o;->a:Lcn/jpush/android/api/p;

    iget v1, p0, Lcn/jpush/android/api/o;->b:I

    invoke-virtual {v0, v1}, Lcn/jpush/android/api/p;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/jpush/android/api/o;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcn/jpush/android/api/o;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/api/o;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lcn/jpush/android/api/o;->c:Lcn/jpush/android/data/d;

    iget-object v3, v3, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
