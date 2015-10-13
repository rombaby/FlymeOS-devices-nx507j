.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final ANR_ADDITIONAL_NUMBER_END_ID:I = 0xc

.field private static final ANR_ADDITIONAL_NUMBER_START_ID:I = 0x3

.field private static final ANR_ADN_RECORD_IDENTIFIER_ID:I = 0x10

.field private static final ANR_ADN_SFI_ID:I = 0xf

.field private static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field private static final ANR_CAPABILITY_ID:I = 0xd

.field private static final ANR_DESCRIPTION_ID:I = 0x0

.field private static final ANR_EXTENSION_ID:I = 0xe

.field private static final ANR_TON_NPI_ID:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EF_ANR_RECORD_SIZE_DONE:I = 0x7

.field private static final EVENT_EF_EMAIL_RECORD_SIZE_DONE:I = 0x6

.field private static final EVENT_EF_IAP_RECORD_SIZE_DONE:I = 0xa

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field private static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x8

.field private static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnLengthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnrFlagsRecord:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mEmailFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFlagsRecord:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapPresent:Z

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPendingExtLoads:I

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 136
    new-instance v0, Lcom/android/internal/telephony/gsm/IccFileHandlerProxy;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/IccFileHandlerProxy;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    .line 144
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 153
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 53
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 55
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    .line 121
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    .line 128
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method private buildAnrData(IILjava/lang/String;)[B
    .locals 10
    .param p1, "length"    # I
    .param p2, "adnRecIndex"    # I
    .param p3, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 895
    new-array v1, p1, [B

    .line 896
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 897
    aput-byte v8, v1, v2

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 899
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 900
    const-string v6, "[buildAnrData] Empty anr record"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 927
    .end local v1    # "data":[B
    :goto_1
    return-object v1

    .line 903
    .restart local v1    # "data":[B
    :cond_1
    aput-byte v9, v1, v9

    .line 904
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 907
    .local v0, "byteAnr":[B
    if-nez v0, :cond_2

    move-object v1, v6

    .line 908
    goto :goto_1

    .line 912
    :cond_2
    const/16 v3, 0xb

    .line 913
    .local v3, "maxlength":I
    array-length v7, v0

    if-le v7, v3, :cond_3

    .line 914
    const-string v7, "[buildAnrData] wrong ANR length"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v1, v6

    .line 915
    goto :goto_1

    .line 917
    :cond_3
    const/4 v6, 0x2

    array-length v7, v0

    invoke-static {v0, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 918
    const/4 v6, 0x1

    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 919
    const/16 v6, 0xd

    aput-byte v8, v1, v6

    .line 920
    const/16 v6, 0xe

    aput-byte v8, v1, v6

    .line 921
    const/16 v6, 0x11

    if-ne p1, v6, :cond_4

    .line 922
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 923
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v6

    sub-int v5, p2, v6

    .line 924
    .local v5, "recordIndex":I
    const/16 v6, 0x10

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 926
    .end local v4    # "pbrIndex":I
    .end local v5    # "recordIndex":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildAnrData: data is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildEmailData(IILjava/lang/String;)[B
    .locals 9
    .param p1, "length"    # I
    .param p2, "adnRecIndex"    # I
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 865
    new-array v1, p1, [B

    .line 866
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 867
    const/4 v6, -0x1

    aput-byte v6, v1, v2

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 870
    const-string v6, "[buildEmailData] Empty email record"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 891
    .end local v1    # "data":[B
    :goto_1
    return-object v1

    .line 873
    .restart local v1    # "data":[B
    :cond_1
    invoke-static {p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 877
    .local v0, "byteEmail":[B
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    add-int/lit8 v5, p1, -0x2

    .line 879
    .local v5, "tmpLen":I
    :goto_2
    array-length v6, v0

    if-le v6, v5, :cond_3

    .line 880
    const-string v6, "[buildEmailData] wrong email length"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 881
    const/4 v1, 0x0

    goto :goto_1

    .end local v5    # "tmpLen":I
    :cond_2
    move v5, p1

    .line 877
    goto :goto_2

    .line 884
    .restart local v5    # "tmpLen":I
    :cond_3
    array-length v6, v0

    invoke-static {v0, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 885
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_4

    .line 886
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 887
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v6

    sub-int v4, p2, v6

    .line 888
    .local v4, "recordIndex":I
    add-int/lit8 v6, p1, -0x1

    add-int/lit8 v7, v4, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 890
    .end local v3    # "pbrIndex":I
    .end local v4    # "recordIndex":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildEmailData: data is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 933
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 937
    :goto_0
    return-void

    .line 936
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getAnrRecNumber(IILjava/lang/String;)I
    .locals 11
    .param p1, "adnRecIndex"    # I
    .param p2, "numRecs"    # I
    .param p3, "oldAnr"    # Ljava/lang/String;

    .prologue
    .line 826
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 827
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    sub-int v6, p1, v9

    .line 828
    .local v6, "recordIndex":I
    const/4 v7, -0x1

    .line 829
    .local v7, "recordNumber":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v7

    .line 861
    :goto_0
    return v9

    .line 832
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 833
    const/4 v5, 0x0

    .line 835
    .local v5, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_1
    if-eqz v5, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v9, v5, v9

    if-lez v9, :cond_1

    .line 840
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v5, v9

    .line 841
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: recnum from iap is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 842
    goto :goto_0

    .line 836
    :catch_0
    move-exception v2

    .line 837
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "IndexOutOfBoundsException in getAnrRecNumber"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 844
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 845
    .local v8, "recsSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: anr record size is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 846
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 847
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_4

    .line 848
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(III)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "anrRecord":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 850
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: Empty anr record. Anr record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 851
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 847
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 857
    .end local v1    # "anrRecord":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "record":[B
    .end local v8    # "recsSize":I
    :cond_3
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    .line 858
    goto/16 :goto_0

    .line 860
    .restart local v5    # "record":[B
    .restart local v8    # "recsSize":I
    :cond_4
    const-string v9, "getAnrRecNumber: no anr record index found"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 861
    goto/16 :goto_0
.end method

.method private getEfidByTag(III)I
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "tag"    # I
    .param p3, "efidIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 483
    const/4 v0, -0x1

    .line 484
    .local v0, "efid":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 486
    .local v2, "numRecs":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 487
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v3

    .line 490
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v3, :cond_2

    const/16 v3, 0xca

    if-ne v3, p2, :cond_2

    .line 495
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v3, v0

    .line 501
    goto :goto_0

    .line 496
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v3, :cond_3

    const/16 v3, 0xc4

    if-ne v3, p2, :cond_3

    .line 497
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 499
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method private getEmailRecNumber(IILjava/lang/String;)I
    .locals 11
    .param p1, "adnRecIndex"    # I
    .param p2, "numRecs"    # I
    .param p3, "oldEmail"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 783
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    sub-int v6, p1, v9

    .line 784
    .local v6, "recordIndex":I
    const/4 v7, -0x1

    .line 785
    .local v7, "recordNumber":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber adnRecIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", recordIndex is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 787
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber recordNumber is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 822
    :goto_0
    return v9

    .line 791
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 792
    const/4 v5, 0x0

    .line 794
    .local v5, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_1
    if-eqz v5, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v9, v5, v9

    if-lez v9, :cond_1

    .line 799
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v5, v9

    .line 800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getEmailRecNumber: record is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", the email recordNumber is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 802
    goto :goto_0

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "IndexOutOfBoundsException in getEmailRecNumber"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 804
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 805
    .local v8, "recsSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber recsSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 806
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 807
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_4

    .line 808
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(III)Ljava/lang/String;

    move-result-object v2

    .line 809
    .local v2, "emailRecord":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 810
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber: Got empty record.Email record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 812
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 807
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 818
    .end local v2    # "emailRecord":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "record":[B
    .end local v8    # "recsSize":I
    :cond_3
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    .line 819
    goto/16 :goto_0

    .line 821
    .restart local v5    # "record":[B
    .restart local v8    # "recsSize":I
    :cond_4
    const-string v9, "getEmailRecNumber: no email record index found"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 822
    goto/16 :goto_0
.end method

.method private getInitIndexBy(I)I
    .locals 3
    .param p1, "pbrIndex"    # I

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "index":I
    :goto_0
    if-lez p1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 520
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 522
    :cond_0
    return v0
.end method

.method private getValidRecordNums(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasRecordIn(Ljava/util/Map;I)Z
    .locals 3
    .param p2, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;I)Z"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "record":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<[B>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 527
    :cond_0
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is empty in pbrIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasValidRecords(I)Z
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1425
    const-string v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void
.end method

.method private putValidRecNums(I)V
    .locals 5
    .param p1, "pbrIndex"    # I

    .prologue
    .line 940
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v2, "recordNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v1

    .line 942
    .local v1, "initAdnIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pbr index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initAdnIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 944
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 949
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v4, 0xc2

    const/16 v3, 0xc0

    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 755
    .local v7, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    const/4 v2, 0x0

    .line 760
    .local v2, "extEf":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 763
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAdnFileAndWait adn efid is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILjava/lang/String;Landroid/os/Message;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v6

    .line 777
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v0, "UsimPhoneBookManager"

    const-string v1, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFileAndWait(I)V
    .locals 11
    .param p1, "recNum"    # I

    .prologue
    const/4 v10, 0x5

    const/16 v9, 0xc4

    .line 301
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_1

    .line 302
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "mPbrFile is NULL, exiting from readAnrFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 307
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 309
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v5, :cond_4

    .line 311
    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 312
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 313
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: IAP file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrFileAndWait anr efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 321
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 340
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Anr file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 327
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 328
    .local v1, "efid":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/lang/String;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrFileAndWait anr efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " recNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 332
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 333
    :catch_1
    move-exception v0

    .line 334
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 344
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 345
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 347
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnr(I)V

    goto/16 :goto_0
.end method

.method private readAnrRecord(III)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "offSet"    # I

    .prologue
    const/4 v5, 0x0

    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, "anrRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v5

    .line 749
    :goto_0
    return-object v4

    .line 738
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int v6, p1, p3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v3, v4, 0xff

    .line 744
    .local v3, "numberLength":I
    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    .line 747
    const-string v4, ""

    goto :goto_0

    .line 739
    .end local v3    # "numberLength":I
    :catch_0
    move-exception v2

    .line 740
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "Error: Improper ICC card: No anr record for ADN, continuing"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 741
    goto :goto_0

    .line 749
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "numberLength":I
    :cond_1
    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 11
    .param p1, "recNum"    # I

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0xca

    .line 244
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 245
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v5, :cond_4

    .line 253
    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 254
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 255
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: IAP file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readEmailFileAndWait email efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 285
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Email file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 272
    .local v1, "efid":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/lang/String;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readEmailFileAndWait email efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " recNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 277
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 278
    :catch_1
    move-exception v0

    .line 279
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 289
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 290
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 292
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmail(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(III)Ljava/lang/String;
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "offSet"    # I

    .prologue
    const/4 v2, 0x0

    .line 719
    const/4 v3, 0x0

    .line 720
    .local v3, "emailRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 730
    :goto_0
    return-object v2

    .line 723
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int v5, p1, p3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "email":Ljava/lang/String;
    goto :goto_0

    .line 724
    .end local v2    # "email":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method private readIapFileAndWait(II)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recNum"    # I

    .prologue
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pbrIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",iap efid is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/lang/String;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 227
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 224
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "adnRecNum"    # I
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .param p4, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 449
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v2

    .line 450
    .local v2, "pbrIndex":I
    const/16 v4, 0xc1

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 451
    .local v1, "efid":I
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 452
    const/4 v3, -0x1

    .line 453
    .local v3, "recordNumber":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 454
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 478
    :goto_0
    return v4

    .line 455
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 464
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    const/4 v3, -0x1

    .line 467
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIapFile  efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recordNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adnRecNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 469
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 470
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, p1, v3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 457
    :sswitch_0
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecNumber(IILjava/lang/String;)I

    move-result v3

    .line 459
    goto :goto_1

    .line 461
    :sswitch_1
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecNumber(IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 477
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 455
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordWithAnr(I)V
    .locals 13
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 585
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 589
    .local v4, "numAdnRecs":I
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 595
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 596
    const/4 v7, 0x0

    .line 598
    .local v7, "record":[B
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "record":[B
    check-cast v7, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .restart local v7    # "record":[B
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v6, v7, v8

    .line 604
    .local v6, "recNum":I
    if-lez v6, :cond_2

    .line 605
    new-array v1, v12, [Ljava/lang/String;

    .line 607
    .local v1, "anrs":[Ljava/lang/String;
    add-int/lit8 v8, v6, -0x1

    invoke-direct {p0, v8, p1, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(III)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 608
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v8

    add-int v0, v3, v8

    .line 609
    .local v0, "adnRecIndex":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 610
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v5, :cond_2

    aget-object v8, v1, v11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 611
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 612
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v0    # "adnRecIndex":I
    .end local v1    # "anrs":[Ljava/lang/String;
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 599
    .end local v6    # "recNum":I
    .end local v7    # "record":[B
    :catch_0
    move-exception v2

    .line 600
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "UsimPhoneBookManager"

    const-string v9, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v8, "updatePhoneAdnRecordWithAnr: no need to parse type1 ANR file"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 629
    .end local v3    # "i":I
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v8, :cond_0

    .line 630
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(II)V

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecordWithEmail(I)V
    .locals 14
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 534
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 538
    .local v5, "numAdnRecs":I
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 544
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 545
    const/4 v8, 0x0

    .line 547
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .restart local v8    # "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 554
    .local v7, "recNum":I
    if-lez v7, :cond_2

    .line 555
    new-array v2, v13, [Ljava/lang/String;

    .line 557
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9, p1, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(III)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    add-int v0, v3, v9

    .line 559
    .local v0, "adnRecIndex":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 560
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_2

    aget-object v9, v2, v12

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 561
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 562
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v0    # "adnRecIndex":I
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 548
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v9, "updatePhoneAdnRecordWithEmail: no need to parse type1 EMAIL file"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    .end local v3    # "i":I
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 579
    .local v4, "len":I
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v9, :cond_0

    .line 580
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAnrCount()I
    .locals 5

    .prologue
    .line 1429
    const/4 v0, 0x0

    .line 1430
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1431
    .local v2, "pbrIndex":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1432
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1434
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrCount count is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1435
    return v0
.end method

.method public getAnrFilesCountEachAdn()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1549
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1550
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from getAnrFilesCountEachAdn"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_0
    :goto_0
    return v1

    .line 1553
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1555
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1557
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1558
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v2, :cond_2

    .line 1559
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1561
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEmailCount()I
    .locals 5

    .prologue
    .line 1439
    const/4 v0, 0x0

    .line 1440
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1441
    .local v2, "pbrIndex":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1442
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailCount count is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1445
    return v0
.end method

.method public getEmailFilesCountEachAdn()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1527
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1528
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from getEmailFilesCountEachAdn"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    :goto_0
    return v1

    .line 1531
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1533
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1535
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1536
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v2, :cond_2

    .line 1537
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1539
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEmptyAnrNum_Pbrindex(I)I
    .locals 5
    .param p1, "pbrindex"    # I

    .prologue
    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1508
    .local v2, "size":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v3, :cond_0

    .line 1511
    const/4 v3, 0x1

    .line 1522
    :goto_0
    return v3

    .line 1514
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1515
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1517
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1516
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v3, v0

    .line 1522
    goto :goto_0
.end method

.method public getEmptyEmailNum_Pbrindex(I)I
    .locals 5
    .param p1, "pbrindex"    # I

    .prologue
    .line 1484
    const/4 v0, 0x0

    .line 1485
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1487
    .local v2, "size":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v3, :cond_0

    .line 1490
    const/4 v3, 0x1

    .line 1501
    :goto_0
    return v3

    .line 1493
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1496
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1495
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v3, v0

    .line 1501
    goto :goto_0
.end method

.method public getPBPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 1571
    const-string v0, "3F007F105F3A"

    return-object v0
.end method

.method public getPbrIndexBy(I)I
    .locals 4
    .param p1, "adnIndex"    # I

    .prologue
    .line 505
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 506
    .local v1, "len":I
    const/4 v2, 0x0

    .line 507
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 508
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 509
    if-ge p1, v2, :cond_0

    .line 513
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 507
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSpareAnrCount()I
    .locals 6

    .prologue
    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 1451
    .local v3, "pbrIndex":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1452
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1453
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1454
    add-int/lit8 v0, v0, 0x1

    .line 1452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1451
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1457
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareAnrCount count is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1458
    return v0
.end method

.method public getSpareEmailCount()I
    .locals 6

    .prologue
    .line 1462
    const/4 v0, 0x0

    .line 1463
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 1464
    .local v3, "pbrIndex":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1465
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1466
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1467
    add-int/lit8 v0, v0, 0x1

    .line 1465
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1464
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1470
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareEmailCount count is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1471
    return v0
.end method

.method public getUsimAdnCount()I
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAdnCount count is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 973
    const/16 v25, 0x0

    .line 974
    .local v25, "oldAnr":Ljava/lang/String;
    const/16 v23, 0x0

    .line 975
    .local v23, "newAnr":Ljava/lang/String;
    const/16 v26, 0x0

    .line 976
    .local v26, "oldEmail":Ljava/lang/String;
    const/16 v24, 0x0

    .line 977
    .local v24, "newEmail":Ljava/lang/String;
    const/16 v30, 0x0

    .line 979
    .local v30, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 981
    :pswitch_0
    const-string v2, "Loading PBR done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 983
    .local v18, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 984
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 986
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 987
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 988
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 991
    .end local v18    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 992
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 993
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 994
    .local v27, "pbrIndex":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v0, v27

    invoke-virtual {v4, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 997
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->putValidRecNums(I)V

    .line 1001
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1002
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1003
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 999
    :cond_2
    const-string v2, "can\'t load USIM ADN records"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1006
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndex":I
    :pswitch_2
    const-string v2, "Loading USIM IAP records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 1008
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 1009
    .restart local v27    # "pbrIndex":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 1010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1013
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1014
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1017
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndex":I
    :pswitch_3
    const-string v2, "Loading USIM Email records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1018
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 1019
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 1020
    .restart local v27    # "pbrIndex":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_4

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    .line 1022
    .local v33, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v33, :cond_5

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlemessage EVENT_EMAIL_LOAD_DONE size is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1032
    .end local v33    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1033
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1034
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 1025
    .restart local v33    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_5
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1037
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndex":I
    .end local v33    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_4
    const-string v2, "Loading USIM Anr records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/AsyncResult;

    .line 1039
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v27

    .line 1040
    .restart local v27    # "pbrIndex":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_6

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/ArrayList;

    .line 1042
    .local v32, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v32, :cond_7

    .line 1043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlemessage EVENT_ANR_LOAD_DONE size is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1052
    .end local v32    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1053
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1054
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 1045
    .restart local v32    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1057
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndex":I
    .end local v32    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_5
    const-string v2, "Loading EF_EMAIL_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v18, v2

    check-cast v18, Landroid/os/AsyncResult;

    .line 1059
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    .line 1060
    .local v21, "emails":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v15, v2, -0x1

    .line 1061
    .local v15, "adnRecIndex":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1062
    .local v3, "efid":I
    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1063
    .local v20, "email":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    .line 1064
    const/4 v2, 0x0

    aget-object v26, v20, v2

    .line 1065
    const-string v24, ""

    .line 1070
    :cond_8
    :goto_4
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    .line 1071
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1073
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1074
    monitor-exit v4

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 1066
    :cond_9
    move-object/from16 v0, v20

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_8

    .line 1067
    const/4 v2, 0x0

    aget-object v26, v20, v2

    .line 1068
    const/4 v2, 0x1

    aget-object v24, v20, v2

    goto :goto_4

    .line 1077
    :cond_a
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v29, v2

    check-cast v29, [I

    .line 1078
    .local v29, "recordSize":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v15, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecNumber(IILjava/lang/String;)I

    move-result v5

    .line 1079
    .local v5, "recordNumber":I
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    const/4 v2, 0x2

    aget v2, v29, v2

    if-gt v5, v2, :cond_b

    if-gtz v5, :cond_c

    .line 1080
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1082
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1083
    monitor-exit v4

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 1086
    :cond_c
    const/4 v2, 0x0

    aget v2, v29, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v15, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailData(IILjava/lang/String;)[B

    move-result-object v6

    .line 1087
    .local v6, "data":[B
    if-nez v6, :cond_d

    .line 1088
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1090
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1091
    monitor-exit v4

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 1095
    :cond_d
    move v14, v5

    .line 1096
    .local v14, "actualRecNumber":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v2, :cond_f

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1099
    .local v19, "efidIndex":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_e

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong efid index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1104
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int v2, v2, v19

    add-int v14, v5, v2

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMAIL index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " efid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " actual RecNumber:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1110
    .end local v19    # "efidIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 1118
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 1121
    .end local v3    # "efid":I
    .end local v5    # "recordNumber":I
    .end local v6    # "data":[B
    .end local v14    # "actualRecNumber":I
    .end local v15    # "adnRecIndex":I
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "email":[Ljava/lang/String;
    .end local v21    # "emails":Ljava/lang/String;
    .end local v29    # "recordSize":[I
    :pswitch_6
    const-string v2, "Loading EF_ANR_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v18, v2

    check-cast v18, Landroid/os/AsyncResult;

    .line 1123
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 1124
    .local v17, "anrs":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v15, v2, -0x1

    .line 1125
    .restart local v15    # "adnRecIndex":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1126
    .restart local v3    # "efid":I
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1127
    .local v16, "anr":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    .line 1128
    const/4 v2, 0x0

    aget-object v25, v16, v2

    .line 1129
    const-string v23, ""

    .line 1134
    :cond_10
    :goto_5
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_12

    .line 1135
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1137
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1138
    monitor-exit v4

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 1130
    :cond_11
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    .line 1131
    const/4 v2, 0x0

    aget-object v25, v16, v2

    .line 1132
    const/4 v2, 0x1

    aget-object v23, v16, v2

    goto :goto_5

    .line 1141
    :cond_12
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v29, v2

    check-cast v29, [I

    .line 1142
    .restart local v29    # "recordSize":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecNumber(IILjava/lang/String;)I

    move-result v5

    .line 1143
    .restart local v5    # "recordNumber":I
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    const/4 v2, 0x2

    aget v2, v29, v2

    if-gt v5, v2, :cond_13

    if-gtz v5, :cond_14

    .line 1144
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1146
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1147
    monitor-exit v4

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 1150
    :cond_14
    const/4 v2, 0x0

    aget v2, v29, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v15, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrData(IILjava/lang/String;)[B

    move-result-object v6

    .line 1151
    .restart local v6    # "data":[B
    if-nez v6, :cond_15

    .line 1152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1154
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1155
    monitor-exit v4

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 1159
    :cond_15
    move v14, v5

    .line 1160
    .restart local v14    # "actualRecNumber":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v2, :cond_17

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1162
    .restart local v19    # "efidIndex":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_16

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong efid index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1166
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int v2, v2, v19

    add-int v14, v5, v2

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " efid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " actual RecNumber:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1173
    .end local v19    # "efidIndex":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 1181
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 1184
    .end local v3    # "efid":I
    .end local v5    # "recordNumber":I
    .end local v6    # "data":[B
    .end local v14    # "actualRecNumber":I
    .end local v15    # "adnRecIndex":I
    .end local v16    # "anr":[Ljava/lang/String;
    .end local v17    # "anrs":Ljava/lang/String;
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v29    # "recordSize":[I
    :pswitch_7
    const-string v2, "Loading UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1185
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v18, v2

    check-cast v18, Landroid/os/AsyncResult;

    .line 1186
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    .line 1187
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1189
    :cond_18
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v6, v2

    check-cast v6, [B

    .line 1190
    .restart local v6    # "data":[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1191
    .restart local v5    # "recordNumber":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1192
    .restart local v15    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v27

    .line 1193
    .restart local v27    # "pbrIndex":I
    const-string v2, "EVENT_UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1194
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1195
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v2, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_6
    array-length v2, v6

    move/from16 v0, v22

    if-ge v0, v2, :cond_19

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_EMAIL_RECORD_DONE data = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v4, v6, v22

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",i is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1200
    aget-byte v2, v6, v22

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    .line 1201
    const-string v2, "EVENT_UPDATE_EMAIL_RECORD_DONE data !=0xff"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v5, -0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1208
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1209
    monitor-exit v4

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 1205
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v5, -0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1198
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 1212
    .end local v5    # "recordNumber":I
    .end local v6    # "data":[B
    .end local v15    # "adnRecIndex":I
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "i":I
    .end local v27    # "pbrIndex":I
    :pswitch_8
    const-string v2, "Loading UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1213
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v18, v2

    check-cast v18, Landroid/os/AsyncResult;

    .line 1214
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v6, v2

    check-cast v6, [B

    .line 1215
    .restart local v6    # "data":[B
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1216
    .restart local v5    # "recordNumber":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1217
    .restart local v15    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v27

    .line 1218
    .restart local v27    # "pbrIndex":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1b

    .line 1219
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1221
    :cond_1b
    const-string v2, "EVENT_UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1222
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1223
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v2, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_7
    array-length v2, v6

    move/from16 v0, v22

    if-ge v0, v2, :cond_1c

    .line 1227
    aget-byte v2, v6, v22

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1d

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v5, -0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1233
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1234
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1235
    monitor-exit v4

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 1231
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v5, -0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1226
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 1238
    .end local v5    # "recordNumber":I
    .end local v6    # "data":[B
    .end local v15    # "adnRecIndex":I
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "i":I
    .end local v27    # "pbrIndex":I
    :pswitch_9
    const-string v2, "EVENT_EF_IAP_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1239
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v18, v2

    check-cast v18, Landroid/os/AsyncResult;

    .line 1240
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 1241
    .restart local v5    # "recordNumber":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v15, v2, -0x1

    .line 1242
    .restart local v15    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v27

    .line 1243
    .restart local v27    # "pbrIndex":I
    const/16 v2, 0xc1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v3

    .line 1244
    .restart local v3    # "efid":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 1245
    .local v31, "tag":I
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1e

    .line 1246
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1248
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1249
    monitor-exit v4

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 1252
    :cond_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v27

    .line 1253
    const/16 v2, 0xc1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v3

    .line 1254
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v29, v2

    check-cast v29, [I

    .line 1255
    .restart local v29    # "recordSize":[I
    const/4 v6, 0x0

    .line 1257
    .restart local v6    # "data":[B
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v2

    sub-int v28, v15, v2

    .line 1258
    .local v28, "recordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIAP_RECORD_SIZE_DONE adnRecIndex is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", recordNumber is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", recordIndex is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1261
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1f

    add-int/lit8 v2, v28, 0x1

    const/4 v4, 0x2

    aget v4, v29, v4

    if-gt v2, v4, :cond_1f

    if-nez v5, :cond_20

    .line 1263
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1265
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1266
    monitor-exit v4

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 1269
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "data":[B
    check-cast v6, [B

    .line 1271
    .restart local v6    # "data":[B
    array-length v2, v6

    new-array v11, v2, [B

    .line 1272
    .local v11, "record_data":[B
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v7, v11

    invoke-static {v6, v2, v11, v4, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1273
    sparse-switch v31, :sswitch_data_0

    .line 1281
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " IAP  efid= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", update IAP index= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with value= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v28, 0x1

    const/4 v12, 0x0

    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15, v5, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move v8, v3

    invoke-virtual/range {v7 .. v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1275
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    int-to-byte v4, v5

    aput-byte v4, v11, v2

    goto :goto_8

    .line 1278
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    int-to-byte v4, v5

    aput-byte v4, v11, v2

    goto :goto_8

    .line 1295
    .end local v3    # "efid":I
    .end local v5    # "recordNumber":I
    .end local v6    # "data":[B
    .end local v11    # "record_data":[B
    .end local v15    # "adnRecIndex":I
    .end local v18    # "ar":Landroid/os/AsyncResult;
    .end local v27    # "pbrIndex":I
    .end local v28    # "recordIndex":I
    .end local v29    # "recordSize":[I
    .end local v31    # "tag":I
    :pswitch_a
    const-string v2, "EVENT_UPDATE_IAP_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v18, v2

    check-cast v18, Landroid/os/AsyncResult;

    .line 1297
    .restart local v18    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_21

    .line 1298
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1300
    :cond_21
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v6, v2

    check-cast v6, [B

    .line 1301
    .restart local v6    # "data":[B
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 1302
    .restart local v15    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v27

    .line 1303
    .restart local v27    # "pbrIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v2

    sub-int v28, v15, v2

    .line 1304
    .restart local v28    # "recordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage EVENT_UPDATE_IAP_RECORD_DONE recordIndex is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", adnRecIndex is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1306
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1307
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v2, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the iap email recordNumber is :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v4, v6, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1312
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1313
    monitor-exit v4

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    .line 1273
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 231
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 182
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 216
    :goto_0
    return-object v2

    .line 188
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 192
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 196
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 198
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 200
    .local v1, "numRecs":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 201
    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    .line 202
    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v0

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 210
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 211
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 212
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 215
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method parseType1AnrFile(II)V
    .locals 13
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v12, 0x0

    .line 679
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 680
    .local v7, "numAnrFiles":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v2, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v0

    .line 683
    .local v0, "adnInitIndex":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 716
    :cond_0
    return-void

    .line 685
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseType1AnrFile: pbrIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numRecs is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numAnrFiles "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 687
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_0

    .line 688
    const/4 v4, 0x0

    .line 689
    .local v4, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 690
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 691
    mul-int v9, v6, p1

    invoke-direct {p0, v5, p2, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(III)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "anr":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 694
    const-string v1, ""

    .line 690
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 698
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 700
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    mul-int v10, v6, p1

    add-int/2addr v10, v5

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 704
    .end local v1    # "anr":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_5

    .line 687
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 708
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v10, v5, v0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 709
    .local v8, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v8, :cond_4

    .line 710
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [Ljava/lang/String;

    .line 711
    .local v3, "anrs":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v3, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 713
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v10, v5, v0

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method parseType1EmailFile(II)V
    .locals 15
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 635
    const/4 v5, 0x0

    .line 637
    .local v5, "emailRec":[B
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 638
    .local v9, "numEmailFiles":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v4, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v1

    .line 641
    .local v1, "adnInitIndex":I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    move/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 675
    :cond_0
    return-void

    .line 644
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseType1EmailFile: pbrIndex is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", numRecs is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 645
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v7, v0, :cond_0

    .line 646
    const/4 v2, 0x0

    .line 647
    .local v2, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 649
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 650
    mul-int v11, v8, p1

    move/from16 v0, p2

    invoke-direct {p0, v7, v0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(III)Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "email":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 653
    const-string v3, ""

    .line 649
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 657
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 659
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    mul-int v12, v8, p1

    add-int/2addr v12, v7

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 663
    .end local v3    # "email":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_5

    .line 645
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 667
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v12, v7, v1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 668
    .local v10, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_4

    .line 669
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [Ljava/lang/String;

    .line 670
    .local v6, "emails":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v11, v12, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    invoke-virtual {v10, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 672
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v12, v7, v1

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 174
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 176
    return-void
.end method

.method public updateAnrFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "adnRecNum"    # I
    .param p2, "oldAnr"    # Ljava/lang/String;
    .param p3, "newAnr"    # Ljava/lang/String;
    .param p4, "efidIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0xc4

    .line 409
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 410
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3, v8, p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v2

    .line 411
    .local v2, "efid":I
    if-nez p2, :cond_0

    .line 412
    const-string p2, ""

    .line 413
    :cond_0
    if-nez p3, :cond_1

    .line 414
    const-string p3, ""

    .line 415
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "anrs":Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrFile oldAnr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newAnr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anrs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", efid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adnRecNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 419
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 420
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 445
    :goto_0
    return v4

    .line 421
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 422
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAnrNum_Pbrindex(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrFile getEmptyAnrNum_Pbrindex=0, pbrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 424
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 425
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 428
    :cond_3
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 432
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 433
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {p0, v7, p1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 445
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 430
    :cond_5
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_1

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 440
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public updateEmailFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "adnRecNum"    # I
    .param p2, "oldEmail"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "efidIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0xca

    .line 365
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 366
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3, v8, p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 367
    .local v1, "efid":I
    if-nez p2, :cond_0

    .line 368
    const-string p2, ""

    .line 369
    :cond_0
    if-nez p3, :cond_1

    .line 370
    const-string p3, ""

    .line 371
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "emails":Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmailFile oldEmail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newEmail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " emails:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " efid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adnRecNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 377
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 378
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 405
    :goto_0
    return v4

    .line 379
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 380
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyEmailNum_Pbrindex(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmailFile getEmptyEmailNum_Pbrindex=0, pbrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 382
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 383
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 386
    :cond_3
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 390
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_4

    .line 391
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 392
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {p0, v7, p1, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 403
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 405
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 388
    :cond_6
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 399
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
