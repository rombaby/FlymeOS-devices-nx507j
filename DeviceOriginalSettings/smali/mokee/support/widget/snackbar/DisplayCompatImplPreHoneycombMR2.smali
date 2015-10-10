.class Lmokee/support/widget/snackbar/DisplayCompatImplPreHoneycombMR2;
.super Lmokee/support/widget/snackbar/DisplayCompat$Impl;
.source "DisplayCompatImplPreHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lmokee/support/widget/snackbar/DisplayCompat$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 33
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 34
    return-void
.end method

.method getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 27
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 28
    return-void
.end method
