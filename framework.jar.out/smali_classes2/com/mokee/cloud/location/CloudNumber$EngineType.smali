.class public final enum Lcom/mokee/cloud/location/CloudNumber$EngineType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mokee/cloud/location/CloudNumber$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

.field public static final enum ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

.field private static final a:[Lcom/mokee/cloud/location/CloudNumber$EngineType;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-array v3, v13, [Ljava/lang/String;

    const-string v2, "HEU*eIF"

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

    move v14, v7

    move-object v7, v2

    move v2, v14

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x2c

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

    const-string v0, "HM_/bB"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/mokee/cloud/location/CloudNumber$EngineType;->b:[Ljava/lang/String;

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$EngineType;->b:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-direct {v0, v2, v1}, Lcom/mokee/cloud/location/CloudNumber$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$EngineType;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {v0, v2, v4}, Lcom/mokee/cloud/location/CloudNumber$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    new-array v0, v13, [Lcom/mokee/cloud/location/CloudNumber$EngineType;

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->a:[Lcom/mokee/cloud/location/CloudNumber$EngineType;

    return-void

    :pswitch_1
    const/4 v11, 0x7

    goto :goto_2

    :pswitch_2
    const/4 v11, 0x3

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x13

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x66

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

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mokee/cloud/location/CloudNumber$EngineType;
    .locals 1

    const-class v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    return-object v0
.end method

.method public static values()[Lcom/mokee/cloud/location/CloudNumber$EngineType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->a:[Lcom/mokee/cloud/location/CloudNumber$EngineType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
