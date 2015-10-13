.class public Lnubia/os/SystemHaptics;
.super Lnubia/os/Haptics;
.source "SystemHaptics.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemHaptics"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lnubia/os/IHapticsService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lnubia/os/Haptics;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 41
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mPackageName:Ljava/lang/String;

    .line 42
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    .line 44
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "SystemHaptics"

    const-string v1, "SystemHaptics construct null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemHaptics mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 48
    return-void

    .line 46
    :cond_0
    const-string v0, "SystemHaptics"

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Lnubia/os/Haptics;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mPackageName:Ljava/lang/String;

    .line 53
    const-string v0, "haptics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IHapticsService$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IHapticsService;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    .line 57
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 1
    .param p1, "log_str"    # Ljava/lang/String;

    .prologue
    .line 277
    const-string v0, "SystemHaptics"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method


# virtual methods
.method public getRingHapticsName()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "RingNames":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsName mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-object v0

    .line 225
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lnubia/os/IHapticsService;->getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValue(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValue mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 250
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-object v0

    .line 253
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lnubia/os/IHapticsService;->getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRingHapticsValues()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "RingValues":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingHapticsValues mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-object v0

    .line 239
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Lnubia/os/IHapticsService;->getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playEffectSeqBuff([BI)V
    .locals 2
    .param p1, "Sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Lnubia/os/IHapticsService;->playEffectSeqBuff([BILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 112
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;I)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playEffectSequenceRepeat mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Lnubia/os/IHapticsService;->playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playNubiaEffect(I)V
    .locals 1
    .param p1, "effectID"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnubia/os/SystemHaptics;->playNubiaEffect(IZ)V

    .line 263
    return-void
.end method

.method public playNubiaEffect(IZ)V
    .locals 4
    .param p1, "effectID"    # I
    .param p2, "ignoreFeedBack"    # Z

    .prologue
    .line 267
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Lnubia/os/IHapticsService;->playNubiaEffect(IZLandroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemHaptics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playPatternRTP(IIII)V
    .locals 6
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playPatternRTP mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v5, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lnubia/os/IHapticsService;->playPatternRTP(IIIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRTPSeqBuff([BI)V
    .locals 2
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRTPSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, p2, v1}, Lnubia/os/IHapticsService;->playRTPSeqBuff([BILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRTPSequence(Ljava/lang/String;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playRTPSequence mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playRingHaptics(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingHaptics mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 196
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lnubia/os/IHapticsService;->playRingHaptics(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playRingSeq(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRingSeq mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v1, :cond_0

    .line 209
    const-string v1, "SystemHaptics"

    const-string v2, "no haptics service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v2, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lnubia/os/IHapticsService;->playRingSeq(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playTimedEffect(I)V
    .locals 2
    .param p1, "effectDuration"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playTimedEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playTimedEffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffect(I)V
    .locals 2
    .param p1, "effectID"    # I

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playeffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 64
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playeffect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playeffectforce(I)V
    .locals 2
    .param p1, "effectID"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playeffectforce mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->playeffectforce(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 183
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, p1, v1}, Lnubia/os/IHapticsService;->setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopPlayingEffect()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlayingEffect mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/os/SystemHaptics;->LOG(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    if-nez v0, :cond_0

    .line 172
    const-string v0, "SystemHaptics"

    const-string v1, "no haptics service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnubia/os/SystemHaptics;->mService:Lnubia/os/IHapticsService;

    iget-object v1, p0, Lnubia/os/SystemHaptics;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Lnubia/os/IHapticsService;->stopPlayingEffect(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method
