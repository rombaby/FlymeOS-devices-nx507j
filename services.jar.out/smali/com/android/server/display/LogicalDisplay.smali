.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayId:I

.field private mHasContent:Z

.field private mInfo:Landroid/view/DisplayInfo;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedRefreshRate:F

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempLayerStackRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 86
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 87
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 88
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 89
    return-void
.end method

.method private setProjectionInTransactionLockedForZSink(Lcom/android/server/display/DisplayDevice;Landroid/view/DisplayInfo;Lcom/android/server/display/DisplayDeviceInfo;I)V
    .locals 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "displayDeviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;
    .param p4, "orientation"    # I

    .prologue
    const/4 v6, 0x0

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "wfdMax":I
    const/4 v3, 0x0

    .line 383
    .local v3, "wfdMix":I
    const/4 v0, 0x0

    .line 384
    .local v0, "displayRectBottom":I
    const/4 v1, 0x0

    .line 386
    .local v1, "displayRectRight":I
    iget v4, p3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v5, p3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    if-le v4, v5, :cond_1

    .line 387
    iget v2, p3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 388
    iget v3, p3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 393
    :goto_0
    iget v4, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-le v4, v5, :cond_2

    .line 394
    move v0, v2

    .line 395
    move v1, v3

    .line 400
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 401
    iget v4, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v5, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-le v4, v5, :cond_0

    .line 402
    const/4 p4, 0x3

    .line 404
    :cond_0
    const-string v4, "LogicalDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfd device: setProjectionInTransactionLocked orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTempLayerStackRect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTempDisplayRect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p4, v4, v5}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 406
    return-void

    .line 390
    :cond_1
    iget v2, p3, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 391
    iget v3, p3, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_0

    .line 397
    :cond_2
    move v0, v3

    .line 398
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public configureDisplayInTransactionLocked(Lcom/android/server/display/DisplayDevice;Z)V
    .locals 17
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "isBlanked"    # Z

    .prologue
    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 259
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    .line 262
    .local v2, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    if-eqz p2, :cond_1

    const/4 v12, -0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayDevice;->setLayerStackInTransactionLocked(I)V

    .line 265
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedRefreshRate:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayDevice;->requestRefreshRateLocked(F)V

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 275
    const/4 v8, 0x0

    .line 276
    .local v8, "orientation":I
    iget v12, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_0

    .line 277
    iget v8, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 281
    :cond_0
    iget v12, v2, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v12, v8

    rem-int/lit8 v8, v12, 0x4

    .line 282
    iget v12, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    const-string v12, "1"

    const-string v13, "persist.sys.wfd.zte_sink"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v2, v8}, Lcom/android/server/display/LogicalDisplay;->setProjectionInTransactionLockedForZSink(Lcom/android/server/display/DisplayDevice;Landroid/view/DisplayInfo;Lcom/android/server/display/DisplayDeviceInfo;I)V

    .line 323
    :goto_1
    return-void

    .line 262
    .end local v8    # "orientation":I
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    goto :goto_0

    .line 294
    .restart local v8    # "orientation":I
    :cond_2
    const/4 v12, 0x1

    if-eq v8, v12, :cond_3

    const/4 v12, 0x3

    if-ne v8, v12, :cond_4

    :cond_3
    const/4 v11, 0x1

    .line 296
    .local v11, "rotated":Z
    :goto_2
    if-eqz v11, :cond_5

    iget v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 297
    .local v10, "physWidth":I
    :goto_3
    if-eqz v11, :cond_6

    iget v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 307
    .local v9, "physHeight":I
    :goto_4
    iget v12, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v10

    iget v13, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v13, v9

    if-ge v12, v13, :cond_7

    .line 310
    move v7, v10

    .line 311
    .local v7, "displayRectWidth":I
    iget v12, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v10

    iget v13, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int v4, v12, v13

    .line 317
    .local v4, "displayRectHeight":I
    :goto_5
    sub-int v12, v9, v4

    div-int/lit8 v6, v12, 0x2

    .line 318
    .local v6, "displayRectTop":I
    sub-int v12, v10, v7

    div-int/lit8 v5, v12, 0x2

    .line 319
    .local v5, "displayRectLeft":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v13, v5, v7

    add-int v14, v6, v4

    invoke-virtual {v12, v5, v6, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 322
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v13}, Lcom/android/server/display/DisplayDevice;->setProjectionInTransactionLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 294
    .end local v4    # "displayRectHeight":I
    .end local v5    # "displayRectLeft":I
    .end local v6    # "displayRectTop":I
    .end local v7    # "displayRectWidth":I
    .end local v9    # "physHeight":I
    .end local v10    # "physWidth":I
    .end local v11    # "rotated":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 296
    .restart local v11    # "rotated":Z
    :cond_5
    iget v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_3

    .line 297
    .restart local v10    # "physWidth":I
    :cond_6
    iget v9, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_4

    .line 314
    .restart local v9    # "physHeight":I
    :cond_7
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v9

    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int v7, v12, v13

    .line 315
    .restart local v7    # "displayRectWidth":I
    move v4, v9

    .restart local v4    # "displayRectHeight":I
    goto :goto_5
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    return-void

    .line 369
    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    .line 122
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    iput v1, v0, Landroid/view/DisplayInfo;->state:I

    .line 128
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    return-object v0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    goto :goto_0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedRefreshRateLocked()F
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedRefreshRate:F

    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isValidLocked()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 139
    if-eqz p1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 142
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    .line 155
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 147
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_2

    .line 151
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 152
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasContentLocked(Z)V
    .locals 0
    .param p1, "hasContent"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 346
    return-void
.end method

.method public setRequestedRefreshRateLocked(F)V
    .locals 0
    .param p1, "requestedRefreshRate"    # F

    .prologue
    .line 353
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedRefreshRate:F

    .line 354
    return-void
.end method

.method public updateLocked(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/DisplayDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDevice;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 195
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v2, v1, Landroid/view/DisplayInfo;->layerStack:I

    .line 197
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    .line 198
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 201
    :cond_3
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 204
    :cond_4
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 205
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 207
    :cond_5
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 208
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    .line 210
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v2, v1, Landroid/view/DisplayInfo;->type:I

    .line 211
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 214
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 215
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 216
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 217
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 218
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iput v2, v1, Landroid/view/DisplayInfo;->refreshRate:F

    .line 219
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, v1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 221
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 222
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 223
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 224
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 225
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v2, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 226
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v2, v1, Landroid/view/DisplayInfo;->state:I

    .line 227
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 228
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 229
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 231
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v2, v1, Landroid/view/DisplayInfo;->ownerUid:I

    .line 232
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 235
    iput-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Landroid/view/DisplayInfo;

    goto/16 :goto_0
.end method
