.class public final Lcom/mokee/cloud/location/OfflineNumber;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "O\u00109"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x5d

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/cloud/location/OfflineNumber;->a:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x64

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x28

    goto :goto_1

    :pswitch_2
    const/16 v5, 0xf

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x44

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detect(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/mokee/cloud/misc/CloudUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mokee/cloud/location/LocationUtils;->getLocationInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/mokee/cloud/location/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mokee/cloud/location/LocationInfo;->getLocation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mokee/cloud/location/OfflineNumber;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/mokee/utils/MoKeeUtils;->isSupportLanguage(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/mokee/google/OfflineNumber;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mokee/google/OfflineNumber;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->getPhoneLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
