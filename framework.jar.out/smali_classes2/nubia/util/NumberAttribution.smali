.class public Lnubia/util/NumberAttribution;
.super Ljava/lang/Object;
.source "NumberAttribution.java"


# static fields
.field private static final CITYID:Ljava/lang/String; = "cityId"

.field private static final CITYNAME:Ljava/lang/String; = "name"

.field private static final CitiesTable:Ljava/lang/String; = "Cities"

.field private static final DBFilePath:Ljava/lang/String; = "/system/etc/mobilenuminmainland.db"

.field private static final LOG_TAG:Ljava/lang/String; = "NumberAttribution"

.field private static final NUMBER:Ljava/lang/String; = "num"

.field private static final NumbersTable:Ljava/lang/String; = "Numbers"

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static myInstance:Lnubia/util/NumberAttribution;

.field private static sCitiesWordBook:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsDBReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 31
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->openDatabase(Landroid/content/Context;)V

    .line 32
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->InitCitiesWordBook()V

    .line 35
    :cond_0
    return-void
.end method

.method private InitCitiesWordBook()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 38
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 39
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Cities"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 40
    const/4 v8, 0x0

    .line 41
    .local v8, "city":Ljava/lang/String;
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "cityId"

    aput-object v4, v2, v5

    const-string v4, "name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 44
    .local v9, "cityCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 46
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_1
    return-void
.end method

.method private closeDatabase()V
    .locals 1

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDBNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "realNumber"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "structuredPhoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v0, 0x0

    .line 138
    .local v0, "nationalnumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 141
    .local v2, "tempnumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v4

    const-string v5, "CN"

    invoke-virtual {v4, p1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    :goto_0
    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_1
    return-object v3

    .line 147
    :cond_1
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 152
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_2
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 157
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v2, p1

    .line 156
    goto :goto_2

    .line 143
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lnubia/util/NumberAttribution;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v1, Lnubia/util/NumberAttribution;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lnubia/util/NumberAttribution;

    invoke-direct {v0, p0}, Lnubia/util/NumberAttribution;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v0, Lnubia/util/NumberAttribution;->myInstance:Lnubia/util/NumberAttribution;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openDatabase(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/mobilenuminmainland.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "/system/etc/mobilenuminmainland.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NumberAttribution"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lnubia/util/NumberAttribution;->closeDatabase()V

    goto :goto_0
.end method

.method private queryCityId(Ljava/lang/String;)I
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 109
    const/4 v11, -0x1

    .line 110
    .local v11, "retCityId":I
    if-nez p1, :cond_0

    move v12, v11

    .line 128
    .end local v11    # "retCityId":I
    .local v12, "retCityId":I
    :goto_0
    return v12

    .line 113
    .end local v12    # "retCityId":I
    .restart local v11    # "retCityId":I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 114
    .local v10, "intNumber":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "numberSelection":Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 116
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "Numbers"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "cityId"

    aput-object v5, v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 119
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 121
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 125
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move v12, v11

    .line 128
    .end local v11    # "retCityId":I
    .restart local v12    # "retCityId":I
    goto :goto_0

    .line 125
    .end local v12    # "retCityId":I
    .restart local v11    # "retCityId":I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public canQuery()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lnubia/util/NumberAttribution;->mIsDBReady:Z

    return v0
.end method

.method public queryAttributionByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v1, ""

    .line 71
    .local v1, "returnValue":Ljava/lang/String;
    iget-object v4, p0, Lnubia/util/NumberAttribution;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    move-object v2, v1

    .line 79
    .end local v1    # "returnValue":Ljava/lang/String;
    .local v2, "returnValue":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 74
    .end local v2    # "returnValue":Ljava/lang/String;
    .restart local v1    # "returnValue":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lnubia/util/NumberAttribution;->getDBNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "tmpnumber":Ljava/lang/String;
    invoke-direct {p0, v3}, Lnubia/util/NumberAttribution;->queryCityId(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "cityId":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    .line 77
    sget-object v4, Lnubia/util/NumberAttribution;->sCitiesWordBook:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "returnValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "returnValue":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 79
    .end local v1    # "returnValue":Ljava/lang/String;
    .restart local v2    # "returnValue":Ljava/lang/String;
    goto :goto_0
.end method
