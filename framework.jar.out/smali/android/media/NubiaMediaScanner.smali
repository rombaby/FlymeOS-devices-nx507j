.class public Landroid/media/NubiaMediaScanner;
.super Ljava/lang/Object;
.source "NubiaMediaScanner.java"


# static fields
.field public static final CARD_ONE_MESSAGE_SOUND:Ljava/lang/String; = "card_one_message_sound"

.field public static final CARD_TWO_MESSAGE_SOUND:Ljava/lang/String; = "card_two_message_sound"

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field public static final MESSAGE_SOUND:Ljava/lang/String; = "message_sound"

.field private static final TAG:Ljava/lang/String; = "NubiaMediaScanner"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMessageFilename:Ljava/lang/String;

.field private mDefaultMessageSet:Z

.field private needToSetMessageSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 86
    iget-object v1, p0, Landroid/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Landroid/media/NubiaMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public doesPathHaveFilename(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 71
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 72
    .local v1, "pathFilenameStart":I
    invoke-virtual {p0}, Landroid/media/NubiaMediaScanner;->getDefaultMeaasgeFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 73
    .local v0, "filenameLength":I
    invoke-virtual {p0}, Landroid/media/NubiaMediaScanner;->getDefaultMeaasgeFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 76
    .local v2, "result":Z
    :cond_0
    return v2
.end method

.method public getDefaultMeaasgeFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "ro.config.message_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/NubiaMediaScanner;->mDefaultMessageFilename:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Landroid/media/NubiaMediaScanner;->mDefaultMessageFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultMessageSet()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/media/NubiaMediaScanner;->mDefaultMessageSet:Z

    return v0
.end method

.method public isNeedToSetMessageSetting()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/media/NubiaMediaScanner;->needToSetMessageSetting:Z

    return v0
.end method

.method public isNeedToSetSettingsForMessage(Ljava/lang/String;ZZZ)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "notifications"    # Z
    .param p3, "need"    # Z
    .param p4, "needToSetSettings"    # Z

    .prologue
    const/4 v1, 0x1

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "result":Z
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/media/NubiaMediaScanner;->getDefaultMessageSet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/media/NubiaMediaScanner;->getDefaultMeaasgeFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/NubiaMediaScanner;->doesPathHaveFilename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v0, v1

    .line 66
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Landroid/media/NubiaMediaScanner;->setNeedToSetMessageSetting(Z)V

    .line 67
    :cond_2
    if-eqz v0, :cond_4

    :goto_1
    return v1

    .line 63
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v1, p4

    .line 67
    goto :goto_1
.end method

.method public setDefaultMessageSet(Z)V
    .locals 0
    .param p1, "defaultMessageSet"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Landroid/media/NubiaMediaScanner;->mDefaultMessageSet:Z

    .line 45
    return-void
.end method

.method public setNeedToSetMessageSetting(Z)V
    .locals 0
    .param p1, "needToSetMesSetting"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Landroid/media/NubiaMediaScanner;->needToSetMessageSetting:Z

    .line 57
    return-void
.end method

.method public setSettingIfNotSet(Landroid/net/Uri;J)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "rowId"    # J

    .prologue
    .line 80
    const-string/jumbo v0, "message_sound"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/NubiaMediaScanner;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 81
    const-string v0, "card_one_message_sound"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/NubiaMediaScanner;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 82
    const-string v0, "card_two_message_sound"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/NubiaMediaScanner;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 83
    return-void
.end method
