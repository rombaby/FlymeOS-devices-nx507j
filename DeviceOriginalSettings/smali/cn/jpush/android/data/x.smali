.class public final Lcn/jpush/android/data/x;
.super Lcn/jpush/android/data/l;


# static fields
.field private static final bb:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "&,\u001d\u000e)/3\u0001"

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

    const/16 v11, 0x5a

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

    const-string v0, "\u00122\u001d?502V\"2(+V<5#9V|z"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcn/jpush/android/data/x;->bb:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x47

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x5c

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x76

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x51

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

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/jpush/android/data/l;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcn/jpush/android/data/x;->o:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/data/x;->ad:Lcn/jpush/android/data/o;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    iget-boolean v0, p0, Lcn/jpush/android/data/x;->Y:Z

    iget v1, p0, Lcn/jpush/android/data/x;->Z:I

    invoke-static {v0, v1, p1}, Lcn/jpush/android/data/p;->a(ZILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcn/jpush/android/data/x;->ab:I

    if-ne v0, v2, :cond_1

    invoke-static {p1, p0, v2}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/jpush/android/data/x;->ab:I

    if-nez v0, :cond_2

    invoke-static {p1, p0, v2, v2}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;ZZ)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/data/x;->bb:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/android/data/x;->ab:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    invoke-super {p0, p1, p2}, Lcn/jpush/android/data/l;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    sget-object v1, Lcn/jpush/android/data/x;->bb:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/jpush/android/data/x;->ab:I

    return v0
.end method
