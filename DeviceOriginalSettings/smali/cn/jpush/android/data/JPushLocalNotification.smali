.class public Lcn/jpush/android/data/JPushLocalNotification;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xd

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "6!\u0000\u0006B4\u001a\u0007\u0001t1\u001a"

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

    const/16 v9, 0x2b

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

    const-string v1, "6!\u0007\u000b_*\u001f\u0011"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "5\r\u0005,B<"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "6\u0011\u0016\u001aM1\u001d\u0003\u001aD6!\u0016\n[="

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "6!\u0001\u001cE,\u001b\u000c\u0007"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "6!\u0016\u001a_4\u001b"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "5!\u0001\u001cE,\u001b\u000c\u0007"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, ";\u0011\u000c\u0007N6\n=\u0007R(\u001b"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "9\u001a=\u0007"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "6!\r\u001dG!"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "+\u0016\r\u0004t,\u0007\u0012\u0016"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "7\u0008\u0007\u0001Y1\u001a\u0007,F+\u0019=\u001aO"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "hN"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    return-void

    :pswitch_c
    const/16 v9, 0x58

    goto/16 :goto_2

    :pswitch_d
    const/16 v9, 0x7e

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x62

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x73

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
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
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->b:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->c:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    iput v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->m:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    check-cast p1, Lcn/jpush/android/data/JPushLocalNotification;

    iget-wide v2, p1, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBroadcastTime()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-wide v0
.end method

.method public getBuilderId()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    return-wide v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBroadcastTime(IIIIII)V
    .locals 7

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt p1, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt p3, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p3

    move v3, p3

    move v1, p1

    :goto_0
    if-lez p4, :cond_6

    move v4, p4

    :goto_1
    if-lez p5, :cond_5

    move v5, p5

    :goto_2
    if-lez p6, :cond_0

    move v6, p6

    :cond_0
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_4

    iput-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    :goto_3
    return-void

    :cond_1
    move v3, p3

    move v1, p1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, -0x1

    if-lez p3, :cond_7

    move v3, p3

    move v1, p1

    goto :goto_0

    :cond_3
    if-lez p2, :cond_8

    move v2, p2

    :goto_4
    if-lez p3, :cond_7

    move v3, p3

    move v1, p1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    goto :goto_3

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    move v3, v6

    move v1, p1

    goto :goto_0

    :cond_8
    move v2, v6

    goto :goto_4
.end method

.method public setBroadcastTime(J)V
    .locals 1

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-void
.end method

.method public setBroadcastTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/data/JPushLocalNotification;->e:J

    return-void
.end method

.method public setBuilderId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    return-void
.end method

.method public setNotificationId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->g:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcn/jpush/android/data/JPushLocalNotification;->f:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v2, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcn/jpush/android/data/JPushLocalNotification;->j:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->m:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    iget-object v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->l:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcn/jpush/android/data/JPushLocalNotification;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    iget v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->k:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-wide v2, p0, Lcn/jpush/android/data/JPushLocalNotification;->i:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/data/JPushLocalNotification;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
