.class public Lcom/mokee/helper/misc/ItemInfo$Builder;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/misc/ItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChangelogUrl:Ljava/lang/String;

.field private mCheckflag:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mMd5Sum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/mokee/helper/misc/ItemInfo;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/mokee/helper/misc/ItemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;-><init>(Lcom/mokee/helper/misc/ItemInfo$1;)V

    .line 165
    .local v0, "info":Lcom/mokee/helper/misc/ItemInfo;
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mChangelogUrl:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mChangelogUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$202(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mMd5Sum:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mMd5Sum:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$302(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mFileName:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mFileName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$402(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mFileSize:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mFileSize:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$502(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mDownloadUrl:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mDownloadUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$602(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mDescription:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$702(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mCheckflag:Ljava/lang/String;

    # setter for: Lcom/mokee/helper/misc/ItemInfo;->mCheckflag:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mokee/helper/misc/ItemInfo;->access$802(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    return-object v0
.end method

.method public setChangelog(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "changelogUrl"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mChangelogUrl:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setCheckflag(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "checkflag"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mCheckflag:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mDescription:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mDownloadUrl:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mFileName:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setFileSize(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "fileSize"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mFileSize:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setMD5Sum(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;
    .locals 0
    .param p1, "md5Sum"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo$Builder;->mMd5Sum:Ljava/lang/String;

    .line 135
    return-object p0
.end method
