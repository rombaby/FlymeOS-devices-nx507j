.class public Landroid/app/NubiaWallpaperManager;
.super Ljava/lang/Object;
.source "NubiaWallpaperManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWallpaperManager"

.field public static final TYPE_DEFAULT_WALL_PAPER:I = 0x0

.field public static final TYPE_LOCK_SCREEN_WALL_PAPER:I = 0x1

.field private static final mLSWallpaperBlurRadius:[I

.field private static final mWallpaperBlurRadius:[I


# instance fields
.field private mCallback:Landroid/app/IWallpaperManagerCallback;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/app/IWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Landroid/app/NubiaWallpaperManager;->mWallpaperBlurRadius:[I

    .line 71
    new-array v0, v2, [I

    aput v3, v0, v1

    sput-object v0, Landroid/app/NubiaWallpaperManager;->mLSWallpaperBlurRadius:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/IWallpaperManagerCallback;Landroid/app/IWallpaperManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "service"    # Landroid/app/IWallpaperManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/app/NubiaWallpaperManager;->mCallback:Landroid/app/IWallpaperManagerCallback;

    .line 80
    iput-object p2, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    .line 81
    iput-object p3, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "defaultScale"    # F

    .prologue
    .line 277
    if-nez p2, :cond_1

    .line 278
    const/16 p2, 0x0

    .line 334
    .end local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p2

    .line 281
    .restart local p2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v17, "window"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 282
    .local v16, "wm":Landroid/view/WindowManager;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 283
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    iget v0, v8, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 286
    invoke-direct/range {p0 .. p1}, Landroid/app/NubiaWallpaperManager;->getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v10

    .line 287
    .local v10, "p":Landroid/graphics/Point;
    iget v0, v10, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, p3

    move/from16 v0, v17

    float-to-int v13, v0

    .line 288
    .local v13, "scaleX":I
    iget v0, v10, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, p3

    move/from16 v0, v17

    float-to-int v14, v0

    .line 290
    .local v14, "scaleY":I
    if-lez v13, :cond_0

    if-lez v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v14, :cond_0

    .line 295
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 296
    .local v6, "desiredWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 300
    .local v5, "desiredHeight":I
    :try_start_0
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 301
    .local v9, "newbm":Landroid/graphics/Bitmap;
    iget v0, v8, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 303
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 305
    .local v15, "targetRect":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v4, v6, v17

    .line 309
    .local v4, "deltaw":I
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v3, v5, v17

    .line 311
    .local v3, "deltah":I
    if-gtz v4, :cond_3

    if-lez v3, :cond_4

    .line 313
    :cond_3
    int-to-float v0, v6

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    int-to-float v0, v5

    move/from16 v18, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 316
    .local v12, "scale":F
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 317
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 318
    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v4, v6, v17

    .line 319
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v3, v5, v17

    .line 322
    .end local v12    # "scale":F
    :cond_4
    div-int/lit8 v17, v4, 0x2

    div-int/lit8 v18, v3, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 324
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 325
    .local v11, "paint":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 326
    new-instance v17, Landroid/graphics/PorterDuffXfermode;

    sget-object v18, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 327
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1, v15, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 330
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p2, v9

    .line 331
    goto/16 :goto_0

    .line 332
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v3    # "deltah":I
    .end local v4    # "deltaw":I
    .end local v9    # "newbm":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v15    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v7

    .line 333
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string v17, "NubiaWallpaperManager"

    const-string v18, "adjustBitmap : can\'t generate default bitmap"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 606
    if-nez p1, :cond_1

    move-object p1, v5

    .line 659
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 610
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 611
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 612
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 613
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 615
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_0

    .line 622
    :cond_2
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 623
    .local v5, "newbm":Landroid/graphics/Bitmap;
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 625
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 626
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 627
    .local v8, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 628
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 630
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 631
    .local v2, "deltaw":I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 633
    .local v1, "deltah":I
    if-gtz v2, :cond_3

    if-lez v1, :cond_4

    .line 636
    :cond_3
    if-le v2, v1, :cond_5

    .line 637
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 641
    .local v7, "scale":F
    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 642
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 643
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 644
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 647
    .end local v7    # "scale":F
    :cond_4
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 649
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 650
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 651
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 652
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 654
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 655
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    .line 656
    goto/16 :goto_0

    .line 639
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_5
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v11, v11

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    goto :goto_1

    .line 657
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "deltah":I
    .end local v2    # "deltaw":I
    .end local v5    # "newbm":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .end local v8    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 658
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const-string v10, "NubiaWallpaperManager"

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private getBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "scale"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 491
    const-string/jumbo v6, "width"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 492
    .local v4, "width":I
    const-string v6, "height"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 495
    .local v2, "height":I
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 496
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v6, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    int-to-float v7, v4

    div-float/2addr v7, p3

    float-to-int v7, v7

    int-to-float v8, v2

    div-float/2addr v8, p3

    float-to-int v8, v8

    invoke-static {v6, v0, v7, v8}, Landroid/app/NubiaWallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 503
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 509
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v5

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v6, "NubiaWallpaperManager"

    const-string v7, "getBitmapInner : can\'t decode file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 504
    :catch_1
    move-exception v6

    goto :goto_0

    .line 502
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 503
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 506
    :goto_1
    throw v5

    .line 504
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private getBlurWallpaperParam([II)V
    .locals 1
    .param p1, "outParamt"    # [I
    .param p2, "wallpaperType"    # I

    .prologue
    .line 417
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getBlurWallpaperParam([II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getBlurWallpaperWithRadius(II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "radius"    # I
    .param p2, "wallpaperType"    # I

    .prologue
    const/4 v2, 0x0

    .line 471
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v3, :cond_1

    .line 472
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "getBlurWallpaperWithRadius : service not running"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    :goto_0
    return-object v2

    .line 477
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v1, "params":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3, v1, p1, p2}, Landroid/app/IWallpaperManager;->getBlurWallpaper(Landroid/os/Bundle;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 480
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 481
    invoke-static {p1}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/app/NubiaWallpaperManager;->getBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;F)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 483
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 344
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 345
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 346
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 347
    return-object v1
.end method

.method private getLockScreenBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 589
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 590
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 597
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 602
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    .line 593
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "Can\'t decode file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 598
    :catch_1
    move-exception v3

    goto :goto_0

    .line 596
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    .line 597
    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 600
    :goto_1
    throw v3

    .line 598
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public static getProperWallpaperPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 515
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 516
    .local v0, "screenHeight":I
    if-ge v0, v1, :cond_0

    .line 517
    move v2, v0

    .line 518
    .local v2, "t":I
    move v0, v1

    .line 519
    move v1, v2

    .line 522
    .end local v2    # "t":I
    :cond_0
    const/16 v3, 0x780

    if-lt v0, v3, :cond_1

    .line 523
    const-string v3, "/system/media/wallpaper/1920/wallpaper_01.jpg"

    .line 525
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "/system/media/wallpaper/default/wallpaper_01.jpg"

    goto :goto_0
.end method

.method private getScrollClipRect(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "wallpaperType"    # I

    .prologue
    .line 351
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 352
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 353
    .local v0, "offsetX":F
    const/4 v1, 0x0

    .line 356
    .local v1, "offsetY":F
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/IWindowSession;->getWallpaperPositionX()F

    move-result v0

    .line 357
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/IWindowSession;->getWallpaperPositionY()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 362
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v4, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 363
    .local v4, "screenWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v3, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 365
    .local v3, "screenHeight":I
    const/4 v8, 0x0

    .line 366
    .local v8, "wallpaperDesiredWidth":I
    const/4 v7, 0x0

    .line 369
    .local v7, "wallpaperDesiredHeight":I
    :try_start_1
    iget-object v10, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-eqz v10, :cond_0

    .line 370
    iget-object v10, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v10}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v8

    .line 371
    iget-object v10, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v10}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 377
    :cond_0
    :goto_1
    const/4 v10, 0x1

    if-ne v10, p3, :cond_1

    .line 378
    const/high16 v0, -0x40800000    # -1.0f

    .line 379
    const/high16 v1, -0x40800000    # -1.0f

    .line 380
    move v8, v4

    .line 381
    move v7, v3

    .line 384
    :cond_1
    const/4 v5, 0x0

    .line 385
    .local v5, "scrollX":I
    const/4 v6, 0x0

    .line 387
    .local v6, "scrollY":I
    const/4 v10, 0x0

    cmpg-float v10, v0, v10

    if-gez v10, :cond_4

    .line 388
    sub-int v10, v8, v4

    div-int/lit8 v5, v10, 0x2

    .line 389
    sub-int v10, v7, v3

    div-int/lit8 v6, v10, 0x2

    .line 399
    :goto_2
    if-gez v5, :cond_2

    .line 400
    const/4 v5, 0x0

    .line 403
    :cond_2
    if-gez v6, :cond_3

    .line 404
    const/4 v6, 0x0

    .line 407
    :cond_3
    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 408
    return-object v2

    .line 391
    :cond_4
    const/4 v10, 0x2

    new-array v9, v10, [I

    .line 392
    .local v9, "wallpaperParam":[I
    invoke-direct {p0, v9, p3}, Landroid/app/NubiaWallpaperManager;->getBlurWallpaperParam([II)V

    .line 393
    const/4 v10, 0x0

    aget v10, v9, v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    aget v8, v9, v10

    .line 394
    :cond_5
    const/4 v10, 0x1

    aget v10, v9, v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    aget v7, v9, v10

    .line 395
    :cond_6
    sub-int v10, v8, v4

    int-to-float v10, v10

    mul-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 396
    sub-int v10, v7, v3

    int-to-float v10, v10

    mul-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    goto :goto_2

    .line 373
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    .end local v9    # "wallpaperParam":[I
    :catch_0
    move-exception v10

    goto :goto_1

    .line 358
    .end local v3    # "screenHeight":I
    .end local v4    # "screenWidth":I
    .end local v7    # "wallpaperDesiredHeight":I
    .end local v8    # "wallpaperDesiredWidth":I
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public static getSurpportBlurRadius(I)[I
    .locals 1
    .param p0, "WallPaperType"    # I

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    sget-object v0, Landroid/app/NubiaWallpaperManager;->mWallpaperBlurRadius:[I

    .line 93
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 91
    sget-object v0, Landroid/app/NubiaWallpaperManager;->mLSWallpaperBlurRadius:[I

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStaticWallpaper()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 431
    iget-object v2, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v1

    .line 435
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static isSurpportBlurRadius(II)Z
    .locals 3
    .param p0, "WallPaperType"    # I
    .param p1, "radius"    # I

    .prologue
    .line 104
    invoke-static {p0}, Landroid/app/NubiaWallpaperManager;->getSurpportBlurRadius(I)[I

    move-result-object v1

    .line 106
    .local v1, "radiusArray":[I
    if-eqz v1, :cond_1

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 108
    aget v2, v1, v0

    if-ne p1, v2, :cond_0

    .line 109
    const/4 v2, 0x1

    .line 114
    .end local v0    # "i":I
    :goto_1
    return v2

    .line 107
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private saveBlurWallpaper(Landroid/graphics/Bitmap;II)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "wallpaperType"    # I

    .prologue
    .line 168
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v4, :cond_1

    .line 169
    const-string v4, "NubiaWallpaperManager"

    const-string/jumbo v5, "saveBlurWallpaper : service not running"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p2, p3}, Landroid/app/IWallpaperManager;->setBlurWallpaper(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 176
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 180
    const/4 v2, 0x0

    .line 183
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v4

    goto :goto_0

    .line 186
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    .line 187
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 190
    :goto_2
    :try_start_5
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 192
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "NubiaWallpaperManager"

    const-string/jumbo v5, "saveBlurWallpaper : can not get WallpaperManagerService remote function"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    goto :goto_2

    .line 186
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setBlurWallpaperParam(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "wallpaperType"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IWallpaperManager;->setBlurWallpaperParam(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setLockScreenWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 557
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 558
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const v3, 0x8000

    new-array v1, v3, [B

    .line 560
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 561
    invoke-virtual {p2, v1, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 562
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 565
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 566
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper([BI)V

    .line 567
    return-void
.end method


# virtual methods
.method public clipWallpaperWithRadius(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "radius"    # I
    .param p4, "wallpaperType"    # I

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-direct {p0}, Landroid/app/NubiaWallpaperManager;->isStaticWallpaper()Z

    move-result v7

    if-nez v7, :cond_0

    .line 273
    :goto_0
    return-object v3

    .line 245
    :cond_0
    invoke-static {p3}, Lnubia/util/BlurUtil;->getInnerScaleByBlurRadius(I)F

    move-result v4

    .line 246
    .local v4, "scale":F
    invoke-direct {p0, p3, p4}, Landroid/app/NubiaWallpaperManager;->getBlurWallpaperWithRadius(II)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0, p1, v7, v4}, Landroid/app/NubiaWallpaperManager;->adjustBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 248
    .local v6, "wallpaperDB":Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 249
    const-string v7, "NubiaWallpaperManager"

    const-string v8, "clipWallpaperWithRadius : invoked method failured!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0, p1, p2, p4}, Landroid/app/NubiaWallpaperManager;->getScrollClipRect(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 254
    .local v5, "scaleRect":Landroid/graphics/Rect;
    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v4

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 255
    const/4 v3, 0x0

    .line 258
    .local v3, "newBm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 259
    new-instance v1, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v1, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    .local v1, "dst":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v5, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 262
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "dst":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 267
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V
    .locals 9
    .param p1, "preWallpaper"    # Landroid/graphics/Bitmap;
    .param p2, "wallpaperType"    # I

    .prologue
    const/4 v8, 0x1

    .line 125
    iget-object v6, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v6, :cond_1

    .line 126
    const-string v6, "NubiaWallpaperManager"

    const-string v7, "doBlurAndSaveWallpaper : service not running"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v4, 0x0

    .line 131
    .local v4, "w":I
    const/4 v1, 0x0

    .line 134
    .local v1, "h":I
    :try_start_0
    iget-object v6, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v4

    .line 135
    iget-object v6, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_1
    const/4 v5, 0x0

    .line 141
    .local v5, "wallpaper":Landroid/graphics/Bitmap;
    if-nez p2, :cond_3

    .line 142
    iget-object v6, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v4, v1}, Landroid/app/NubiaWallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 147
    :cond_2
    :goto_2
    invoke-static {p2}, Landroid/app/NubiaWallpaperManager;->getSurpportBlurRadius(I)[I

    move-result-object v3

    .line 149
    .local v3, "radiusArray":[I
    if-eqz v3, :cond_0

    .line 152
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_5

    .line 153
    if-ne v8, p2, :cond_4

    .line 154
    aget v6, v3, v2

    int-to-float v6, v6

    const/high16 v7, 0x59000000

    invoke-static {v5, v6, v7}, Lnubia/util/BlurUtil;->doBlurWithMask(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_4
    aget v6, v3, v2

    invoke-direct {p0, v0, v6, p2}, Landroid/app/NubiaWallpaperManager;->saveBlurWallpaper(Landroid/graphics/Bitmap;II)V

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 143
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v3    # "radiusArray":[I
    :cond_3
    if-ne v8, p2, :cond_2

    .line 144
    move-object v5, p1

    goto :goto_2

    .line 156
    .restart local v2    # "i":I
    .restart local v3    # "radiusArray":[I
    :cond_4
    aget v6, v3, v2

    int-to-float v6, v6

    invoke-static {v5, v6}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 163
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7, p2}, Landroid/app/NubiaWallpaperManager;->setBlurWallpaperParam(III)V

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    .end local v3    # "radiusArray":[I
    .end local v5    # "wallpaper":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public doBlurAndSaveWallpaper([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "wallpaperType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V

    .line 120
    return-void
.end method

.method public getLockScreenBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v3, :cond_1

    .line 572
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    :goto_0
    return-object v2

    .line 576
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v1, "params":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3, v1}, Landroid/app/IWallpaperManager;->getLockScreenWallpaper(Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 578
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0, v0, v1}, Landroid/app/NubiaWallpaperManager;->getLockScreenBitmapInner(Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 581
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getWallpaperStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v3, :cond_1

    .line 666
    const-string v3, "NubiaWallpaperManager"

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    :goto_0
    return-object v2

    .line 670
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v1, "params":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mCallback:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, v4, v1}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 672
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 673
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 675
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setLockScreenBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v4, :cond_1

    .line 214
    const-string v4, "NubiaWallpaperManager"

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Landroid/app/NubiaWallpaperManager;->doBlurAndSaveWallpaper(Landroid/graphics/Bitmap;I)V

    .line 227
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    if-eqz v2, :cond_0

    .line 231
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 234
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 230
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 230
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setLockScreenResource(I)V
    .locals 8
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v5, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 450
    .local v4, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "res:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 453
    const/4 v1, 0x0

    .line 455
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Landroid/app/NubiaWallpaperManager;->setLockScreenWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 457
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 460
    if-eqz v2, :cond_0

    .line 461
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 465
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 460
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v1, :cond_2

    .line 461
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 460
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setLockScreenStream(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    if-nez v4, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mService:Landroid/app/IWallpaperManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setLockScreenWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 536
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 539
    const/4 v1, 0x0

    .line 541
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/NubiaWallpaperManager;->setLockScreenWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 543
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.LOCKSCREEN_WALLPAPER_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Landroid/app/NubiaWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 546
    if-eqz v2, :cond_0

    .line 547
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 550
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 546
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 547
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 546
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
