.class Lcom/android/server/display/nubiaOverlayDisplayWindow$2;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowSizeChanged(II)V

    .line 714
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->refreshRate:F

    invoke-interface {v0, p1, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowCreated(Landroid/graphics/SurfaceTexture;F)V

    .line 715
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowDestroyed()V

    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 727
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 731
    return-void
.end method
