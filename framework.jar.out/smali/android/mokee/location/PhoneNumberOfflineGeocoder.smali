.class public final Landroid/mokee/location/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static LIBNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "mokee-phonelocation"

    sput-object v0, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->LIBNAME:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->LIBNAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized doGetDescriptionForNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Landroid/mokee/location/PhoneNumberOfflineGeocoder;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->nativeGetDescriptionForNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDescriptionForNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 50
    const-string v2, "(?:-| )"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->doGetDescriptionForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, "ss":[Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v1, p1

    .line 56
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPhoneCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "mPhoneCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getPhoneLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "mPhoneLocation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method private static native nativeGetDescriptionForNumber(Ljava/lang/String;)Ljava/lang/String;
.end method
