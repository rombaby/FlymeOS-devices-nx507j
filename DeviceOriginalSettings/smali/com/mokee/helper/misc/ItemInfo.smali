.class public Lcom/mokee/helper/misc/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/helper/misc/ItemInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mokee/helper/misc/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x4c5388d18e78867bL


# instance fields
.field private mChangelogUrl:Ljava/lang/String;

.field private mCheckflag:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mMd5Sum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/mokee/helper/misc/ItemInfo$1;

    invoke-direct {v0}, Lcom/mokee/helper/misc/ItemInfo$1;-><init>()V

    sput-object v0, Lcom/mokee/helper/misc/ItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Lcom/mokee/helper/misc/ItemInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mokee/helper/misc/ItemInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/mokee/helper/misc/ItemInfo$1;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mokee/helper/misc/ItemInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mokee/helper/misc/ItemInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mokee/helper/misc/ItemInfo$1;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mokee/helper/misc/ItemInfo;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mChangelogUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mMd5Sum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mokee/helper/misc/ItemInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mokee/helper/misc/ItemInfo;->mCheckflag:Ljava/lang/String;

    return-object p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mMd5Sum:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileSize:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mDownloadUrl:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mChangelogUrl:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mDescription:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mCheckflag:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getChangeLogFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getChangelogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mChangelogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckflag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mCheckflag:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Sum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mMd5Sum:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mMd5Sum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mFileSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mChangelogUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mokee/helper/misc/ItemInfo;->mCheckflag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
