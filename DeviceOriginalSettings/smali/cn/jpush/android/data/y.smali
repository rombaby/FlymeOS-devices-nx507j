.class public final Lcn/jpush/android/data/y;
.super Lcn/jpush/android/data/d;


# static fields
.field private static final ab:[Ljava/lang/String;


# instance fields
.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:I

.field public aa:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u001b\u001a\\d\u001a"

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

    const/16 v9, 0x76

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

    const-string v1, "\u001b\u001aDrC"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u001b\u001aLc\u0004\u0001"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u001b\u001a@x\u0010\u0002"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u001b\u001a]o\u0006\u0008"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "8+Bx\u0019\u001a+\t`\u001f\t F6\u0002\u00145L6[M"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x6d

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x45

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x29

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x16

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/jpush/android/data/d;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/jpush/android/data/y;->o:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    iget-object v0, p0, Lcn/jpush/android/data/y;->c:Ljava/lang/String;

    const/16 v1, 0x3e3

    invoke-static {v0, v1, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget v0, p0, Lcn/jpush/android/data/y;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/jpush/android/data/y;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {p1, p0}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/android/data/y;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    sget-object v0, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/y;->a:I

    sget-object v0, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/y;->W:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/y;->X:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/y;->Z:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/y;->ab:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/y;->Y:Ljava/lang/String;

    return v3
.end method
