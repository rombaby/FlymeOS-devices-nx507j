.class abstract Lmokee/support/widget/snackbar/DisplayCompat$Impl;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/support/widget/snackbar/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
.end method

.method abstract getSize(Landroid/view/Display;Landroid/graphics/Point;)V
.end method
