.class public final Lmokee/hardware/MKHardwareManager;
.super Ljava/lang/Object;
.source "MKHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

.field private static sService:Lmokee/hardware/IMKHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 127
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmokee/hardware/MKHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 147
    iput-object v0, p0, Lmokee/hardware/MKHardwareManager;->mContext:Landroid/content/Context;

    .line 151
    :goto_0
    invoke-static {}, Lmokee/hardware/MKHardwareManager;->getService()Lmokee/hardware/IMKHardwareService;

    move-result-object v1

    sput-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    .line 152
    return-void

    .line 149
    :cond_0
    iput-object p1, p0, Lmokee/hardware/MKHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 772
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    if-nez v0, :cond_0

    .line 773
    const-string v0, "MKHardwareManager"

    const-string v1, "not connected to MKHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x0

    .line 776
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getArrayValue([III)I
    .locals 1
    .param p1, "arr"    # [I
    .param p2, "idx"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 251
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 255
    .end local p3    # "defaultValue":I
    :cond_0
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_1
    aget p3, p1, p2

    goto :goto_0
.end method

.method private getDisplayColorCalibrationArray()[I
    .locals 1

    .prologue
    .line 369
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getDisplayColorCalibration()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisplayGammaCalibrationArray(I)[I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 577
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0, p1}, Lmokee/hardware/IMKHardwareService;->getDisplayGammaCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 582
    :goto_0
    return-object v0

    .line 580
    :catch_0
    move-exception v0

    .line 582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lmokee/hardware/MKHardwareManager;

    invoke-direct {v0, p0}, Lmokee/hardware/MKHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmokee/hardware/MKHardwareManager;->sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

    .line 163
    :cond_0
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sMKHardwareManagerInstance:Lmokee/hardware/MKHardwareManager;

    return-object v0
.end method

.method private static getService()Lmokee/hardware/IMKHardwareService;
    .locals 2

    .prologue
    .line 168
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    .line 176
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 171
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "mkhardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 172
    .restart local v0    # "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 173
    invoke-static {v0}, Lmokee/hardware/IMKHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/hardware/IMKHardwareService;

    move-result-object v1

    sput-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    .line 174
    sget-object v1, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVibratorIntensityArray()[I
    .locals 1

    .prologue
    .line 281
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getVibratorIntensity()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 213
    sget-object v0, Lmokee/hardware/MKHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0, p1}, Lmokee/hardware/IMKHardwareService;->get(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 223
    :goto_0
    return v0

    .line 221
    :catch_0
    move-exception v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultDisplayMode()Lmokee/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 747
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getDefaultDisplayMode()Lmokee/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 752
    :goto_0
    return-object v0

    .line 750
    :catch_0
    move-exception v0

    .line 752
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayColorCalibrationDefault()I
    .locals 3

    .prologue
    .line 392
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMax()I
    .locals 3

    .prologue
    .line 406
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMin()I
    .locals 3

    .prologue
    .line 399
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 606
    invoke-direct {p0, p1}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    .line 607
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 608
    :cond_0
    const/4 v1, 0x0

    .line 610
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayGammaCalibrationMax()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 626
    invoke-direct {p0, v2}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibrationMin()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 618
    invoke-direct {p0, v2}, Lmokee/hardware/MKHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayModes()[Lmokee/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 721
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getDisplayModes()[Lmokee/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    .line 724
    :catch_0
    move-exception v0

    .line 726
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getLtoDestination()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    .line 671
    :catch_0
    move-exception v0

    .line 673
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLtoDownloadInterval()J
    .locals 2

    .prologue
    .line 681
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getLtoDownloadInterval()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 686
    :goto_0
    return-wide v0

    .line 684
    :catch_0
    move-exception v0

    .line 686
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getLtoSource()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 660
    :goto_0
    return-object v0

    .line 658
    :catch_0
    move-exception v0

    .line 660
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumGammaControls()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 591
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getNumGammaControls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 596
    :goto_0
    return v0

    .line 594
    :catch_0
    move-exception v0

    .line 596
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 699
    :goto_0
    return-object v0

    .line 697
    :catch_0
    move-exception v0

    .line 699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .prologue
    .line 184
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0}, Lmokee/hardware/IMKHardwareService;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVibratorDefaultIntensity()I
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMaxIntensity()I
    .locals 3

    .prologue
    .line 314
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMinIntensity()I
    .locals 3

    .prologue
    .line 307
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorWarningIntensity()I
    .locals 3

    .prologue
    .line 321
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lmokee/hardware/MKHardwareManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 237
    sget-object v0, Lmokee/hardware/MKHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a boolean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0, p1, p2}, Lmokee/hardware/IMKHardwareService;->set(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0, p1, p2}, Lmokee/hardware/IMKHardwareService;->setDisplayGammaCalibration(I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 647
    :goto_0
    return v0

    .line 645
    :catch_0
    move-exception v0

    .line 647
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayMode(Lmokee/hardware/DisplayMode;Z)Z
    .locals 1
    .param p1, "mode"    # Lmokee/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 760
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0, p1, p2}, Lmokee/hardware/IMKHardwareService;->setDisplayMode(Lmokee/hardware/DisplayMode;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 765
    :goto_0
    return v0

    .line 763
    :catch_0
    move-exception v0

    .line 765
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibratorIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 334
    :try_start_0
    invoke-direct {p0}, Lmokee/hardware/MKHardwareManager;->checkService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lmokee/hardware/MKHardwareManager;->sService:Lmokee/hardware/IMKHardwareService;

    invoke-interface {v0, p1}, Lmokee/hardware/IMKHardwareService;->setVibratorIntensity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 339
    :goto_0
    return v0

    .line 337
    :catch_0
    move-exception v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
