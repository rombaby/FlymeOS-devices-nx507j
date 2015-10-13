.class Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;
.super Ljava/lang/Object;
.source "CDMAPhoneNumberUtils.java"


# static fields
.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final DBG:Z = false

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "CDMAPhoneNumberUtils"

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 256
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "BS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "BM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "KY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DO"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GD"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GU"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "JM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MS"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MP"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "KN"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "LC"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TT"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TC"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "VI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dialableIndex"    # I
    .param p1, "origStr"    # Ljava/lang/String;
    .param p2, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 380
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .end local v1    # "ret":Ljava/lang/StringBuilder;
    .local v2, "retStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 387
    .end local v2    # "retStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "nonDigitStr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "retStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # J

    .prologue
    .line 394
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "gsm.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "currIso":Ljava/lang/String;
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3, p1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object p0

    .line 407
    .end local v0    # "currIso":Ljava/lang/String;
    .end local v1    # "defaultIso":Ljava/lang/String;
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 9
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "currFormat"    # I
    .param p2, "defaultFormat"    # I
    .param p3, "phoneId"    # J

    .prologue
    const/4 v6, 0x1

    .line 413
    move-object v3, p0

    .line 414
    .local v3, "retStr":Ljava/lang/String;
    if-ne p1, p2, :cond_4

    if-ne p1, v6, :cond_4

    move v5, v6

    .line 417
    .local v5, "useNanp":Z
    :goto_0
    if-eqz p0, :cond_2

    const-string v7, "+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 419
    const/4 v2, 0x0

    .line 420
    .local v2, "postDialStr":Ljava/lang/String;
    move-object v4, p0

    .line 421
    .local v4, "tempDialStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 424
    :cond_0
    invoke-static {v5, v4, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getNetworkDialStr(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "networkDialStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 427
    invoke-static {v3, v1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->updateResultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 433
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    .line 435
    .local v0, "dialableIndex":I
    if-lt v0, v6, :cond_5

    .line 436
    invoke-static {v0, v3, v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 445
    .end local v0    # "dialableIndex":I
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v1    # "networkDialStr":Ljava/lang/String;
    .end local v2    # "postDialStr":Ljava/lang/String;
    .end local v4    # "tempDialStr":Ljava/lang/String;
    :cond_2
    move-object p0, v3

    .line 447
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_3
    return-object p0

    .line 414
    .end local v5    # "useNanp":Z
    .restart local p0    # "dialStr":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 439
    .restart local v0    # "dialableIndex":I
    .restart local v1    # "networkDialStr":Ljava/lang/String;
    .restart local v2    # "postDialStr":Ljava/lang/String;
    .restart local v4    # "tempDialStr":Ljava/lang/String;
    .restart local v5    # "useNanp":Z
    :cond_5
    if-gez v0, :cond_1

    .line 440
    const-string v2, ""

    goto :goto_1
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;
    .param p1, "phoneId"    # J

    .prologue
    .line 520
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "defaultIso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    .line 525
    .local v1, "format":I
    invoke-static {p0, v1, v1, p1, p2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object p0

    .line 529
    .end local v0    # "defaultIso":Ljava/lang/String;
    .end local v1    # "format":I
    .end local p0    # "dialStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v6, 0x0

    .line 128
    :goto_0
    return-object v6

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 104
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 111
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 112
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 121
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 123
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v5, 0x0

    .line 164
    :goto_0
    return-object v5

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 146
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 149
    .local v1, "haveSeenPlus":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 150
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 151
    .local v0, "c":C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 152
    if-eqz v1, :cond_2

    .line 149
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    :cond_2
    const/4 v1, 0x1

    .line 157
    :cond_3
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 159
    :cond_4
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 218
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 234
    :goto_0
    return-object v5

    .line 221
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v2, "ret":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 225
    .local v4, "trimIndex":I
    add-int/lit8 v1, v4, 0x1

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 226
    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 229
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3
    .param p0, "postDialStr"    # Ljava/lang/String;

    .prologue
    .line 364
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 365
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    .end local v0    # "c":C
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 364
    .restart local v0    # "c":C
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "c":C
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private static getCurrentIdp(ZJ)Ljava/lang/String;
    .locals 5
    .param p0, "useNanp"    # Z
    .param p1, "phoneId"    # J

    .prologue
    .line 504
    const-string v3, "gsm.operator.idpstring"

    if-eqz p0, :cond_1

    const-string v2, "011"

    :goto_0
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "ps":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 509
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 510
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 511
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 516
    :cond_0
    :goto_1
    return-object v1

    .line 504
    .end local v0    # "position":I
    .end local v1    # "ps":Ljava/lang/String;
    :cond_1
    const-string v2, "+"

    goto :goto_0

    .line 512
    .restart local v0    # "position":I
    .restart local v1    # "ps":Ljava/lang/String;
    :cond_2
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 513
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 300
    sget-object v2, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 301
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 302
    sget-object v2, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const/4 v2, 0x1

    .line 309
    :goto_1
    return v2

    .line 301
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 307
    const/4 v2, 0x2

    goto :goto_1

    .line 309
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getNetworkDialStr(ZLjava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "useNanp"    # Z
    .param p1, "tempDialStr"    # Ljava/lang/String;
    .param p2, "phoneId"    # J

    .prologue
    .line 455
    if-eqz p0, :cond_0

    .line 456
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "networkDialStr":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->processPlusCode(Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v0

    .line 463
    return-object v0

    .line 458
    .end local v0    # "networkDialStr":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "networkDialStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 197
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 199
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 201
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 202
    add-int/lit8 v4, v0, -0x1

    .line 204
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 63
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 315
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "retVal":Z
    if-eqz p0, :cond_2

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 327
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    const/4 v2, 0x1

    .line 330
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 331
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 332
    .local v0, "c":C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    const/4 v2, 0x0

    .line 342
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 330
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_2
    const-string v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 75
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const/4 v2, 0x0

    .line 243
    :goto_1
    return v2

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "retVal":Z
    if-eqz p0, :cond_1

    .line 351
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "newDialStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const/4 v1, 0x1

    .line 358
    .end local v0    # "newDialStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    const-string v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final isReallyDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 69
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 84
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 291
    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "CDMAPhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 170
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 171
    if-ge p0, p1, :cond_1

    .line 177
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    if-gez p0, :cond_0

    .line 174
    if-ltz p1, :cond_3

    move p0, p1

    .line 175
    goto :goto_0

    .line 177
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method private static processPlusCode(Ljava/lang/String;ZJ)Ljava/lang/String;
    .locals 6
    .param p0, "networkDialStr"    # Ljava/lang/String;
    .param p1, "useNanp"    # Z
    .param p2, "phoneId"    # J

    .prologue
    const/4 v4, 0x1

    .line 477
    move-object v1, p0

    .line 483
    .local v1, "retStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 486
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "newStr":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    move-object v1, v0

    .line 499
    .end local v0    # "newStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 494
    .restart local v0    # "newStr":Ljava/lang/String;
    :cond_1
    const-string v2, "[+]"

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhoneNumberUtils;->getCurrentIdp(ZJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static updateResultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "retStr"    # Ljava/lang/String;
    .param p1, "networkDialStr"    # Ljava/lang/String;

    .prologue
    .line 467
    if-nez p0, :cond_0

    .line 468
    move-object p0, p1

    .line 472
    :goto_0
    return-object p0

    .line 470
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
