.class public Lcom/mokee/cloud/location/LocationUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1f

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "WR-\u0008\u0000RR "

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

    const/16 v9, 0x74

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

    const-string v1, "vR\u0005\u000c\u0011xQ!\u001c\u0010"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "jH+\u001b\r\u001bX<\u001b\u001bI\u001c"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "KU!\u0007\u0011dI7\u0019\u0011"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "NM*\u0008\u0000^b:\u0000\u0019^"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "NN+\u001b+V\\<\u0002"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "UH#\u000b\u0011I"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "^S)\u0000\u001a^b:\u0010\u0004^"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "KU!\u0007\u0011dI7\u0019\u0011"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "KU!\u0007\u0011dI7\u0019\u0011"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "WR-\u0008\u0000RR "

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "WR-\u0008\u0000RR "

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "NN+\u001b+V\\<\u0002"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "^S)\u0000\u001a^b:\u0010\u0004^"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "^S)\u0000\u001a^b:\u0010\u0004^"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "UH#\u000b\u0011I"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "NM*\u0008\u0000^b:\u0000\u0019^"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "NM*\u0008\u0000^b:\u0000\u0019^"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u5e44\u5477\u63e6\u9569"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u9aa1\u624d\u757b\u8bb4"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u8bf3\u9aaa\u757b\u8bb4"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "UH#\u000b\u0011I"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "KU!\u0007\u0011dI7\u0019\u0011"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "NN+\u001b+V\\<\u0002"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "NM*\u0008\u0000^b:\u0000\u0019^"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "WR-\u0008\u0000RR "

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "^S)\u0000\u001a^b:\u0010\u0004^"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u5e44\u5477\u63e6\u9569"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u6393\u953d"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u8bf3\u9aaa"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u8bf3\u9aaa\u757b\u8bb4"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    return-void

    :pswitch_1e
    const/16 v9, 0x3b

    goto/16 :goto_2

    :pswitch_1f
    const/16 v9, 0x3d

    goto/16 :goto_2

    :pswitch_20
    const/16 v9, 0x4e

    goto/16 :goto_2

    :pswitch_21
    const/16 v9, 0x69

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
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
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I
    .locals 1

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocationInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/mokee/cloud/location/LocationInfo;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v6

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    sget-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/mokee/cloud/misc/CloudUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v0, v0, v5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v0, v0, v7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v0, v0, v8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/mokee/cloud/location/LocationInfo;

    invoke-direct {v0}, Lcom/mokee/cloud/location/LocationInfo;-><init>()V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mokee/cloud/location/LocationInfo;->setNumber(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mokee/cloud/location/LocationInfo;->setLocation(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mokee/cloud/location/LocationInfo;->setPhoneType(I)V

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mokee/cloud/location/LocationInfo;->setEngineType(I)V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mokee/cloud/location/LocationInfo;->setUserMark(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mokee/cloud/location/LocationInfo;->setUpdateTime(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v6

    :goto_1
    :try_start_4
    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    move-object v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    throw v0

    :catch_3
    move-exception v0

    throw v0

    :cond_4
    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public static getPhoneType(Ljava/lang/String;)Lcom/mokee/cloud/location/CloudNumber$PhoneType;
    .locals 2

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->HARASS:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->FRAUD:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->ADVERTISEMENT:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    goto :goto_0
.end method

.method public static getPhoneTypeByID(I)Lcom/mokee/cloud/location/CloudNumber$PhoneType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->HARASS:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->FRAUD:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->ADVERTISEMENT:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I
    .locals 1

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->HARASS:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->FRAUD:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->ADVERTISEMENT:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mokee/cloud/location/LocationInfo;->getEngineType()I

    move-result v0

    if-ge v0, p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget v0, Lcom/mokee/cloud/location/CloudNumber;->c:I

    if-eqz v0, :cond_0

    :cond_2
    sget-object v0, Landroid/provider/Telephony$PhoneLocation;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public static rewritePhoneLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object p0, v0, v1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object p0, v0, v1

    goto :goto_0
.end method

.method public static shouldUpdateLocationInfo(Lcom/mokee/cloud/location/LocationInfo;)Z
    .locals 8

    const-wide/32 v6, 0xf731400

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mokee/cloud/location/LocationInfo;->getEngineType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mokee/cloud/location/LocationInfo;->getUpdateTime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/mokee/cloud/location/LocationInfo;->getUserMark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mokee/cloud/location/LocationInfo;->getEngineType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/mokee/cloud/location/LocationInfo;->getUpdateTime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateUserMarkInfo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    sget v1, Lcom/mokee/cloud/location/CloudNumber;->c:I

    invoke-static {p0, p1}, Lcom/mokee/cloud/location/LocationUtils;->getLocationInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/mokee/cloud/location/LocationInfo;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$PhoneLocation;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v4, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v5, 0x19

    aget-object v4, v4, v5

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v0, v0, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v0, v0, v4

    sget-object v4, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v4}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v0, v0, v4

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mokee/cloud/location/LocationUtils;->a:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v0, v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/mokee/cloud/location/LocationInfo;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
