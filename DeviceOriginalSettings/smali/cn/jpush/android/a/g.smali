.class public final Lcn/jpush/android/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field public a:D

.field public b:D

.field private c:Landroid/content/Context;

.field private d:Landroid/location/LocationManager;

.field private e:Landroid/location/Location;

.field private f:Ljava/lang/String;

.field private g:J

.field private final h:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "\u000fKr"

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

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x13

    :goto_2
    xor-int/2addr v11, v12

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

    const-string v0, "\u0013\u0019m\u0005gJ\u0001$\u0002?JWo\u00031R\u001egH1\tWuF)M]-Fq\rZsF)M]-Fr\u000bX#^6\u000eF"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "\u0004Tb\u0005g\u0001To"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/a/g;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x68

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x3b

    goto :goto_2

    :pswitch_4
    move v11, v2

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x64

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jpush/android/a/h;

    invoke-direct {v0, p0}, Lcn/jpush/android/a/h;-><init>(Lcn/jpush/android/a/g;)V

    iput-object v0, p0, Lcn/jpush/android/a/g;->h:Landroid/location/LocationListener;

    iput-object p1, p0, Lcn/jpush/android/a/g;->c:Landroid/content/Context;

    sget-object v0, Lcn/jpush/android/a/g;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/jpush/android/a/g;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/jpush/android/a/g;->d:Landroid/location/LocationManager;

    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/a/g;->a:D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/a/g;->b:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/a/g;->g:J

    sget-object v0, Lcn/jpush/android/a/g;->z:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcn/jpush/android/a/g;->a:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcn/jpush/android/a/g;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/g;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/a/g;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/a/g;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/android/a/g;->a(Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/a/g;->d:Landroid/location/LocationManager;

    sget-object v1, Lcn/jpush/android/a/g;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v1, p0, Lcn/jpush/android/a/g;->d:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcn/jpush/android/a/g;->d:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/g;->e:Landroid/location/Location;

    iget-object v0, p0, Lcn/jpush/android/a/g;->e:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/g;->e:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcn/jpush/android/a/g;->a(Landroid/location/Location;)V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/a/g;->d:Landroid/location/LocationManager;

    const-wide/16 v2, 0x7d0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcn/jpush/android/a/g;->h:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/a/g;->d:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/jpush/android/a/g;->h:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/a/g;->g:J

    return-wide v0
.end method
