.class public Landroid/mokee/calendar/FestivalInfo;
.super Ljava/lang/Object;
.source "FestivalInfo.java"


# static fields
.field private static festivalInfo:[Ljava/lang/String;

.field private static specificInfo:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFestivalInfo()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0101 \u5143\u65e6"

    aput-object v2, v1, v3

    const-string v2, "0214 \u60c5\u4eba\u8282"

    aput-object v2, v1, v4

    const-string v2, "0308 \u5987\u5973\u8282"

    aput-object v2, v1, v5

    const-string v2, "0312 \u690d\u6811\u8282"

    aput-object v2, v1, v6

    const-string v2, "0315 \u6d88\u8d39\u65e5"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "0401 \u611a\u4eba\u8282"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0413 \u6cfc\u6c34\u8282"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0501 \u52b3\u52a8\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0504 \u9752\u5e74\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0601 \u513f\u7ae5\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0701 \u5efa\u515a\u65e5"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0801 \u5efa\u519b\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0903 \u6297\u6218\u80dc\u5229"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0910 \u6559\u5e08\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "1001 \u56fd\u5e86\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "1031 \u4e07\u5723\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "1111 \u5149\u68cd\u8282"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "1224 \u5e73\u5b89\u591c"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "1225 \u5723\u8bde\u8282"

    aput-object v3, v1, v2

    sput-object v1, Landroid/mokee/calendar/FestivalInfo;->festivalInfo:[Ljava/lang/String;

    .line 45
    :cond_0
    :goto_0
    sget-object v1, Landroid/mokee/calendar/FestivalInfo;->festivalInfo:[Ljava/lang/String;

    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0101 \u5143\u65e6"

    aput-object v2, v1, v3

    const-string v2, "0214 \u60c5\u4eba\u7bc0"

    aput-object v2, v1, v4

    const-string v2, "0308 \u5a66\u5973\u7bc0"

    aput-object v2, v1, v5

    const-string v2, "0401 \u611a\u4eba\u7bc0"

    aput-object v2, v1, v6

    const-string v2, "0501 \u52de\u52d5\u7bc0"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "0701 \u7279\u5340\u7d00\u5ff5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0910 \u6559\u5e2b\u7bc0"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "1001 \u570b\u6176\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "1031 \u842c\u8056\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "1224 \u5e73\u5b89\u591c"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "1225 \u8056\u8a95\u7bc0"

    aput-object v3, v1, v2

    sput-object v1, Landroid/mokee/calendar/FestivalInfo;->festivalInfo:[Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "0101 \u5143\u65e6"

    aput-object v2, v1, v3

    const-string v2, "0214 \u60c5\u4eba\u7bc0"

    aput-object v2, v1, v4

    const-string v2, "0228 \u548c\u5e73\u7d00\u5ff5"

    aput-object v2, v1, v5

    const-string v2, "0308 \u5a66\u5973\u7bc0"

    aput-object v2, v1, v6

    const-string v2, "0312 \u570b\u7236\u901d\u4e16"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "0314 \u53cd\u4fb5\u7565\u65e5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0329 \u5148\u70c8\u7d00\u5ff5"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0401 \u611a\u4eba\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0404 \u5152\u7ae5\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0501 \u52de\u52d5\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0715 \u89e3\u653e\u7d00\u5ff5"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0808 \u7236\u89aa\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0903 \u8ecd\u4eba\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0928 \u5b54\u5b50\u8a95\u8fb0"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "1010 \u570b\u6176\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "1024 \u806f\u5408\u570b\u65e5"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "1025 \u81fa\u7063\u5149\u5fa9"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "1112 \u570b\u7236\u8a95\u8fb0"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "1031 \u842c\u8056\u7bc0"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "1224 \u5e73\u5b89\u591c"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "1225 \u8056\u8a95\u7bc0"

    aput-object v3, v1, v2

    sput-object v1, Landroid/mokee/calendar/FestivalInfo;->festivalInfo:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getSpecificInfo()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 50
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "5 2 0 \u6bcd\u4eb2\u8282"

    aput-object v2, v1, v3

    const-string v2, "6 3 0 \u7236\u4eb2\u8282"

    aput-object v2, v1, v4

    const-string v2, "11 4 4 \u611f\u6069\u8282"

    aput-object v2, v1, v5

    sput-object v1, Landroid/mokee/calendar/FestivalInfo;->specificInfo:[Ljava/lang/String;

    .line 57
    :cond_0
    :goto_0
    sget-object v1, Landroid/mokee/calendar/FestivalInfo;->specificInfo:[Ljava/lang/String;

    return-object v1

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "5 2 0 \u6bcd\u89aa\u7bc0"

    aput-object v2, v1, v3

    const-string v2, "6 3 0 \u7236\u89aa\u7bc0"

    aput-object v2, v1, v4

    const-string v2, "11 4 4 \u611f\u6069\u7bc0"

    aput-object v2, v1, v5

    sput-object v1, Landroid/mokee/calendar/FestivalInfo;->specificInfo:[Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "5 2 0 \u6bcd\u89aa\u7bc0"

    aput-object v2, v1, v3

    const-string v2, "11 4 4 \u611f\u6069\u7bc0"

    aput-object v2, v1, v4

    sput-object v1, Landroid/mokee/calendar/FestivalInfo;->specificInfo:[Ljava/lang/String;

    goto :goto_0
.end method
