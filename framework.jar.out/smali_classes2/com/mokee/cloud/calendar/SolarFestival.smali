.class public Lcom/mokee/cloud/calendar/SolarFestival;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "A\u0017x\u0018"

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

    const/16 v11, 0x76

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

    const-string v0, "A\u0017x\u0018"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/mokee/cloud/calendar/SolarFestival;->a:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x64

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x27

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x4a

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x7c

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSolarFestivalInfo(II)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/mokee/cloud/calendar/SolarFestival;->b:I

    invoke-static {}, Lcom/mokee/cloud/misc/CloudUtils;->hasAccessPermission()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mokee/cloud/calendar/SolarFestival;->a:[Ljava/lang/String;

    aget-object v4, v4, v8

    new-array v5, v8, [Ljava/lang/Object;

    add-int/lit8 v6, p0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mokee/cloud/calendar/SolarFestival;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/mokee/calendar/FestivalInfo;->getFestivalInfo()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eqz v0, :cond_3

    move v0, v1

    :cond_1
    aget-object v6, v4, v0

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v0, v6, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-lt v0, v5, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static getSpecificSolarFestivalInfo(III)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget v0, Lcom/mokee/cloud/calendar/SolarFestival;->b:I

    invoke-static {}, Lcom/mokee/cloud/misc/CloudUtils;->hasAccessPermission()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/mokee/calendar/FestivalInfo;->getSpecificInfo()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-eqz v0, :cond_3

    move v0, v1

    :cond_1
    aget-object v5, v3, v0

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x3

    aget-object v0, v5, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-lt v0, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isEaster(III)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/mokee/cloud/calendar/SolarFestival;->b:I

    rem-int/lit8 v3, p0, 0x13

    div-int/lit8 v4, p0, 0x64

    rem-int/lit8 v5, p0, 0x64

    div-int/lit8 v6, v4, 0x4

    rem-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v4, 0x8

    div-int/lit8 v8, v8, 0x19

    sub-int v8, v4, v8

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v3, 0x13

    add-int/2addr v4, v9

    sub-int/2addr v4, v6

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, 0xf

    rem-int/lit8 v4, v4, 0x1e

    div-int/lit8 v6, v5, 0x4

    rem-int/lit8 v5, v5, 0x4

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x20

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v4

    sub-int v5, v6, v5

    rem-int/lit8 v5, v5, 0x7

    mul-int/lit8 v6, v4, 0xb

    add-int/2addr v3, v6

    mul-int/lit8 v6, v5, 0x16

    add-int/2addr v3, v6

    div-int/lit16 v3, v3, 0x1c3

    add-int v6, v4, v5

    mul-int/lit8 v7, v3, 0x7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x72

    div-int/lit8 v6, v6, 0x1f

    if-ne p1, v6, :cond_0

    add-int/2addr v4, v5

    mul-int/lit8 v3, v3, 0x7

    sub-int v3, v4, v3

    add-int/lit8 v3, v3, 0x72

    rem-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    :cond_2
    move v0, v1

    goto :goto_0
.end method
