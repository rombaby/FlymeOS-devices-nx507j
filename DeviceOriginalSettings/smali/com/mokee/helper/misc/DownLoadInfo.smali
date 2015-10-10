.class public Lcom/mokee/helper/misc/DownLoadInfo;
.super Ljava/lang/Object;
.source "DownLoadInfo.java"


# instance fields
.field private complete:J

.field private downID:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field public fileSize:J

.field private flag:I

.field private localFile:Ljava/lang/String;

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "fileSize"    # J
    .param p3, "complete"    # J
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileSize:J

    .line 37
    iput-wide p3, p0, Lcom/mokee/helper/misc/DownLoadInfo;->complete:J

    .line 38
    iput-object p5, p0, Lcom/mokee/helper/misc/DownLoadInfo;->url:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "downID"    # Ljava/lang/String;
    .param p4, "localFile"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "fileSize"    # J
    .param p8, "state"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->url:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/mokee/helper/misc/DownLoadInfo;->flag:I

    .line 46
    iput-object p3, p0, Lcom/mokee/helper/misc/DownLoadInfo;->downID:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/mokee/helper/misc/DownLoadInfo;->localFile:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileName:Ljava/lang/String;

    .line 49
    iput-wide p6, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileSize:J

    .line 50
    iput p8, p0, Lcom/mokee/helper/misc/DownLoadInfo;->state:I

    .line 51
    return-void
.end method


# virtual methods
.method public getDownID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->downID:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileSize:J

    return-wide v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->flag:I

    return v0
.end method

.method public getLocalFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->localFile:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->state:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mokee/helper/misc/DownLoadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownLoadInfo [fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/misc/DownLoadInfo;->complete:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->downID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->localFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/misc/DownLoadInfo;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
