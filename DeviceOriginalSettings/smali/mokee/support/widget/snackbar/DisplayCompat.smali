.class Lmokee/support/widget/snackbar/DisplayCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/support/widget/snackbar/DisplayCompat$Impl;
    }
.end annotation


# static fields
.field private static final IMPL:Lmokee/support/widget/snackbar/DisplayCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 35
    new-instance v0, Lmokee/support/widget/snackbar/DisplayCompatImplJBMR1;

    invoke-direct {v0}, Lmokee/support/widget/snackbar/DisplayCompatImplJBMR1;-><init>()V

    sput-object v0, Lmokee/support/widget/snackbar/DisplayCompat;->IMPL:Lmokee/support/widget/snackbar/DisplayCompat$Impl;

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 37
    new-instance v0, Lmokee/support/widget/snackbar/DisplayCompatImplHoneycombMR2;

    invoke-direct {v0}, Lmokee/support/widget/snackbar/DisplayCompatImplHoneycombMR2;-><init>()V

    sput-object v0, Lmokee/support/widget/snackbar/DisplayCompat;->IMPL:Lmokee/support/widget/snackbar/DisplayCompat$Impl;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lmokee/support/widget/snackbar/DisplayCompatImplPreHoneycombMR2;

    invoke-direct {v0}, Lmokee/support/widget/snackbar/DisplayCompatImplPreHoneycombMR2;-><init>()V

    sput-object v0, Lmokee/support/widget/snackbar/DisplayCompat;->IMPL:Lmokee/support/widget/snackbar/DisplayCompat$Impl;

    goto :goto_0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 48
    sget-object v0, Lmokee/support/widget/snackbar/DisplayCompat;->IMPL:Lmokee/support/widget/snackbar/DisplayCompat$Impl;

    invoke-virtual {v0, p0, p1}, Lmokee/support/widget/snackbar/DisplayCompat$Impl;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 49
    return-void
.end method

.method public static getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 44
    sget-object v0, Lmokee/support/widget/snackbar/DisplayCompat;->IMPL:Lmokee/support/widget/snackbar/DisplayCompat$Impl;

    invoke-virtual {v0, p0, p1}, Lmokee/support/widget/snackbar/DisplayCompat$Impl;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 45
    return-void
.end method

.method public static getWidthFromPercentage(Landroid/app/Activity;Ljava/lang/Float;)I
    .locals 4
    .param p0, "targetActivity"    # Landroid/app/Activity;
    .param p1, "mMaxWidthPercentage"    # Ljava/lang/Float;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 53
    .local v1, "display":Landroid/view/Display;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 54
    .local v0, "dispSize":Landroid/graphics/Point;
    invoke-static {v1, v0}, Lmokee/support/widget/snackbar/DisplayCompat;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 56
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method
