.class public Lcom/mokee/helper/misc/ThreadDownLoadInfo;
.super Ljava/lang/Object;
.source "ThreadDownLoadInfo.java"


# instance fields
.field private downSize:J

.field private endPos:J

.field private startPos:J

.field private threadId:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0
    .param p1, "threadId"    # I
    .param p2, "startPos"    # J
    .param p4, "endPos"    # J
    .param p6, "downSize"    # J
    .param p8, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->threadId:I

    .line 34
    iput-wide p2, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->startPos:J

    .line 35
    iput-wide p4, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->endPos:J

    .line 36
    iput-wide p6, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->downSize:J

    .line 37
    iput-object p8, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->url:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getDownSize()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->downSize:J

    return-wide v0
.end method

.method public getEndPos()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->endPos:J

    return-wide v0
.end method

.method public getStartPos()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->startPos:J

    return-wide v0
.end method

.method public getThreadId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->threadId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownLoadInfo [threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->threadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->startPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->endPos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->downSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
