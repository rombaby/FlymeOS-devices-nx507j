.class public final Lcn/jpush/android/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:D

.field private h:Landroid/telephony/PhoneStateListener;

.field private i:D

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/telephony/TelephonyManager;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jpush/android/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xe

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ":_\u0019"

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

    const/16 v9, 0x1c

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

    const-string v1, "6W\u001e~p>g\u0012rh,W\u000e|C8W\u0018r"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "7W\u001fvh2W\u0012H})]\u001dH\u007f4\\\u0019"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "8]\u0010{C2\\"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "6W\u001e~p>g\u001fxi5L\u000enC8W\u0018r"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "(Q\u001by}7g\u000fcn>V\u001bct"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, ":V\u0018es2\\Rgy)U\u0015do2W\u00129]\u0018{9DO\u0004{3VN\u0008}#[S\u0018y(^S\u0015"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "+P\u0013yy"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "<]\u0008U}(]/c}/Q\u0013yP:L\u0015ci?]"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "<]\u0008De(L\u0019zU?"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "8\\\u0011v"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "<]\u0008Yy/O\u0013ew\u0012\\"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "<]\u0008U}(]/c}/Q\u0013yP4V\u001b~h.\\\u0019"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "<]\u0008U}(]/c}/Q\u0013yU?"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    return-void

    :pswitch_d
    const/16 v9, 0x5b

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x38

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x7c

    goto/16 :goto_2

    :pswitch_10
    const/16 v9, 0x17

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
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
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/a/b;->q:Ljava/util/ArrayList;

    sget-object v0, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/jpush/android/a/c;

    invoke-direct {v0, p0}, Lcn/jpush/android/a/c;-><init>(Lcn/jpush/android/a/b;)V

    iput-object v0, p0, Lcn/jpush/android/a/b;->h:Landroid/telephony/PhoneStateListener;

    sget-object v0, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/jpush/android/a/b;->h:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/a/b;I)I
    .locals 0

    iput p1, p0, Lcn/jpush/android/a/b;->a:I

    return p1
.end method

.method static synthetic a(Lcn/jpush/android/a/b;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/a/b;->o:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 8

    const-wide v6, 0x40cc200000000000L    # 14400.0

    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/jpush/android/a/b;->o:Z

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcn/jpush/android/a/b;->g:D

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcn/jpush/android/a/b;->i:D

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/b;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Lcn/jpush/android/a/a;

    invoke-direct {v0}, Lcn/jpush/android/a/a;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/a;->a(I)V

    iget v2, p0, Lcn/jpush/android/a/b;->l:I

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/a;->d(I)V

    iget v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/a;->c(I)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/a/a;->b(I)V

    sget-object v1, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/jpush/android/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/a/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcn/jpush/android/a/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {v0}, Lcn/jpush/android/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lcn/jpush/android/a/b;->p:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/a/b;->j:I

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private i()I
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_0
    iget v0, p0, Lcn/jpush/android/a/b;->c:I

    return v0
.end method

.method private j()V
    .locals 8

    const-wide v6, 0x40cc200000000000L    # 14400.0

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/a/b;->e:Z

    iput-boolean v0, p0, Lcn/jpush/android/a/b;->d:Z

    iput v0, p0, Lcn/jpush/android/a/b;->c:I

    iput v0, p0, Lcn/jpush/android/a/b;->f:I

    iput v0, p0, Lcn/jpush/android/a/b;->j:I

    iput v0, p0, Lcn/jpush/android/a/b;->k:I

    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    instance-of v0, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcn/jpush/android/a/b;->e:Z

    move-object v0, v1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-lez v2, :cond_2

    const v3, 0xffff

    if-eq v2, v3, :cond_2

    iput v2, p0, Lcn/jpush/android/a/b;->c:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/b;->f:I

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    :cond_3
    :goto_1
    iget-object v2, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_0

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcn/jpush/android/a/b;->g:D

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcn/jpush/android/a/b;->i:D

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    iput v1, p0, Lcn/jpush/android/a/b;->l:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v1, Lcn/jpush/android/a/a;

    invoke-direct {v1}, Lcn/jpush/android/a/a;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v1, v2}, Lcn/jpush/android/a/a;->a(I)V

    iget v2, p0, Lcn/jpush/android/a/b;->l:I

    invoke-virtual {v1, v2}, Lcn/jpush/android/a/a;->d(I)V

    iget v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v1, v2}, Lcn/jpush/android/a/a;->c(I)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/jpush/android/a/a;->b(I)V

    :cond_4
    sget-object v0, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/jpush/android/a/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/a/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/jpush/android/a/a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {v1}, Lcn/jpush/android/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/b;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/a/b;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/a/b;->j:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->k:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/Class;

    sget-object v0, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v0, v0, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/b;->l:I

    sget-object v0, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v0, v0, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    iput-wide v4, p0, Lcn/jpush/android/a/b;->g:D

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/jpush/android/a/b;->i:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/a/b;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_0
    iget v0, p0, Lcn/jpush/android/a/b;->b:I

    return v0
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 8

    const-wide v6, 0x40cc200000000000L    # 14400.0

    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/jpush/android/a/b;->o:Z

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcn/jpush/android/a/b;->g:D

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcn/jpush/android/a/b;->i:D

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/a/b;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Lcn/jpush/android/a/a;

    invoke-direct {v0}, Lcn/jpush/android/a/a;-><init>()V

    iget v2, p0, Lcn/jpush/android/a/b;->b:I

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/a;->a(I)V

    iget v2, p0, Lcn/jpush/android/a/b;->l:I

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/a;->d(I)V

    iget v2, p0, Lcn/jpush/android/a/b;->m:I

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/a;->c(I)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/a/a;->b(I)V

    sget-object v1, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/jpush/android/a/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/a/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcn/jpush/android/a/a;->b()Lorg/json/JSONArray;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/a/b;->j:I

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/jpush/android/a/b;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c()Lorg/json/JSONArray;
    .locals 13

    const/4 v12, 0x4

    const/4 v9, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcn/jpush/android/a/b;->d()[I

    move-result-object v0

    iget-boolean v1, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_0
    iget v1, p0, Lcn/jpush/android/a/b;->f:I

    int-to-double v6, v1

    iget-boolean v1, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_1
    iget v5, p0, Lcn/jpush/android/a/b;->j:I

    iget-boolean v1, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_2
    iget v8, p0, Lcn/jpush/android/a/b;->k:I

    if-eqz v0, :cond_3

    array-length v1, v0

    if-ge v1, v4, :cond_4

    :cond_3
    new-array v0, v4, [I

    iget v1, p0, Lcn/jpush/android/a/b;->c:I

    aput v1, v0, v2

    const/16 v1, -0x3c

    aput v1, v0, v9

    :cond_4
    move v1, v2

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_5

    if-le v1, v12, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcn/jpush/android/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcn/jpush/android/a/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :cond_6
    add-int/lit8 v4, v1, 0x1

    if-ltz v4, :cond_7

    const/16 v9, 0x1f

    if-gt v4, v9, :cond_7

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x71

    :goto_2
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    sget-object v10, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    aget v11, v0, v1

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v10, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    sget-object v10, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v10, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v10, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v10, v10, v11

    invoke-virtual {v9, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v4, Lcn/jpush/android/a/b;->z:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v4, v4, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_7
    move v4, v2

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_3

    :catch_1
    move-exception v0

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method public final d()[I
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcn/jpush/android/a/b;->i()I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v6, [I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/a/b;->n:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-array v0, v4, [I

    invoke-direct {p0}, Lcn/jpush/android/a/b;->i()I

    move-result v1

    aput v1, v0, v6

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    new-array v2, v0, [I

    invoke-direct {p0}, Lcn/jpush/android/a/b;->i()I

    move-result v0

    aput v0, v2, v6

    const/4 v0, 0x2

    iget v3, p0, Lcn/jpush/android/a/b;->a:I

    aput v3, v2, v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    if-lez v4, :cond_3

    const v5, 0xffff

    if-eq v4, v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    aput v4, v2, v1

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    aput v0, v2, v5

    goto :goto_1

    :cond_4
    new-array v0, v1, [I

    invoke-static {v2, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_0
    iget-boolean v0, p0, Lcn/jpush/android/a/b;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/b;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/a/b;->j()V

    :cond_0
    iget-boolean v0, p0, Lcn/jpush/android/a/b;->e:Z

    return v0
.end method

.method public final g()F
    .locals 2

    const/high16 v1, 0x4e7e0000

    invoke-virtual {p0}, Lcn/jpush/android/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcn/jpush/android/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/a/b;->d()[I

    goto :goto_0
.end method
