.class Lmokee/support/widget/snackbar/DisplayCompatImplHoneycombMR2;
.super Lmokee/support/widget/snackbar/DisplayCompat$Impl;
.source "DisplayCompatImplHoneycombMR2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmokee/support/widget/snackbar/DisplayCompat$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 34
    return-void
.end method

.method getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 29
    return-void
.end method
