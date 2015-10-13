.class public Lnubia/os/A2iManager;
.super Ljava/lang/Object;
.source "A2iManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "A2iManager"


# instance fields
.field private final mService:Lnubia/os/IA2iManager;


# direct methods
.method public constructor <init>(Lnubia/os/IA2iManager;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/IA2iManager;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lnubia/os/A2iManager;->mService:Lnubia/os/IA2iManager;

    .line 38
    return-void
.end method


# virtual methods
.method public getA2iIntent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Lnubia/os/A2iManager;->mService:Lnubia/os/IA2iManager;

    invoke-interface {v1}, Lnubia/os/IA2iManager;->getA2iIntent()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "A2iManager"

    const-string v2, "RemoteException in getA2iIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTrainingResult(I)Ljava/lang/String;
    .locals 3
    .param p1, "score"    # I

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lnubia/os/A2iManager;->mService:Lnubia/os/IA2iManager;

    invoke-interface {v1, p1}, Lnubia/os/IA2iManager;->getTrainingResult(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "A2iManager"

    const-string v2, "RemoteException in getTrainingResult"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isServiceAvailable()Z
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 60
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lnubia/os/A2iManager;->mService:Lnubia/os/IA2iManager;

    invoke-interface {v2}, Lnubia/os/IA2iManager;->isServiceAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 65
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "A2iManager"

    const-string v3, "RemoteException in isServiceAvailable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTrainingMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lnubia/os/A2iManager;->mService:Lnubia/os/IA2iManager;

    invoke-interface {v1, p1}, Lnubia/os/IA2iManager;->setTrainingMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "A2iManager"

    const-string v2, "RemoteException in setTrainingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, -0x1

    goto :goto_0
.end method
