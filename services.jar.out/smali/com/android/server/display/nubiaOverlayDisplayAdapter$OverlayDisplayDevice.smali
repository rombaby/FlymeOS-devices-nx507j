.class final Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "nubiaOverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private mSurface:Landroid/view/Surface;

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILandroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "refreshRate"    # F
    .param p7, "densityDpi"    # I
    .param p8, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 228
    iput-object p3, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    .line 229
    iput p4, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mWidth:I

    .line 230
    iput p5, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mHeight:I

    .line 231
    iput p6, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    .line 232
    iput p7, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    .line 233
    iput-object p8, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 234
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 238
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 240
    iput-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 243
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    const-string v0, "nubiaOverlayDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update getDisplayDeviceInfoLocked() rotated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/nubiaOverlayDisplayAdapter;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayAdapter;->rotated:Z
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayAdapter;->access$100(Lcom/android/server/display/nubiaOverlayDisplayAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 261
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 263
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 264
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 265
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 266
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 267
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 268
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 269
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 270
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "nubiaOverlayDisplayAdapter"

    const-string v1, "update performTraversalInTransactionLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/nubiaOverlayDisplayAdapter$OverlayDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 254
    :cond_1
    return-void
.end method
