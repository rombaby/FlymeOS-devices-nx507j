.class public Lcom/mokee/google/OfflineNumber;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private static c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

.field public static d:I

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\"F\u0010\\o3P:V~5L\u0006Ft3"

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

    const/16 v5, 0x1b

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

    sput-object v0, Lcom/mokee/google/OfflineNumber;->e:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x41

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x29

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x65

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x32

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

.method private static declared-synchronized a()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2

    const-class v1, Lcom/mokee/google/OfflineNumber;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    sput-object v0, Lcom/mokee/google/OfflineNumber;->b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    :cond_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->b:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mokee/google/OfflineNumber;->a()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/mokee/google/OfflineNumber;->a:Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized b()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 2

    const-class v1, Lcom/mokee/google/OfflineNumber;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    sput-object v0, Lcom/mokee/google/OfflineNumber;->c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    :cond_0
    sget-object v0, Lcom/mokee/google/OfflineNumber;->c:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v2, Lcom/mokee/google/OfflineNumber;

    monitor-enter v2

    :try_start_0
    sget v3, Lcom/mokee/google/OfflineNumber;->d:I

    sget-object v0, Lcom/mokee/google/OfflineNumber;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mokee/google/OfflineNumber;->a:Ljava/lang/String;

    new-instance v1, Lcom/mokee/google/a;

    invoke-direct {v1}, Lcom/mokee/google/a;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    sget-object v0, Lcom/mokee/google/OfflineNumber;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-boolean v1, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    sput-boolean v1, Lcom/mokee/volley/VolleyError;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    sget v1, Lcom/mokee/google/OfflineNumber;->d:I

    invoke-static {p0, p1}, Lcom/mokee/google/OfflineNumber;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mokee/google/OfflineNumber;->b()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sget-boolean v2, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mokee/google/OfflineNumber;->d:I

    goto :goto_0
.end method
