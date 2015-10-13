.class public Lnubia/fancydrawable/DateDrawable;
.super Lnubia/fancydrawable/FancyDrawable;
.source "DateDrawable.java"


# static fields
.field private static final ANIMATION_LAST_TIME:J = 0x3e8L

.field private static final REFRESH_TIME_GAP:I = 0x2710


# instance fields
.field backsrc:Landroid/graphics/Bitmap;

.field bstarted:Z

.field private daybitmapH:I

.field private daybitmapW:I

.field isTurnPage:Z

.field private mCalendarCurrBitmap:Landroid/graphics/Bitmap;

.field private mCalendarDstBitmap:Landroid/graphics/Bitmap;

.field private mCalendarLastBitmap:Landroid/graphics/Bitmap;

.field private mCalendarSrcBitmap:Landroid/graphics/Bitmap;

.field private mChanged:Z

.field private mCurrTime:J

.field mDstDay:I

.field private mPaused:Z

.field mShowDay:I

.field private mStartTime:J

.field private mSystemResources:Landroid/content/res/Resources;

.field private mdrawableBg:Landroid/graphics/drawable/Drawable;

.field private mdrawableMask:Landroid/graphics/drawable/Drawable;

.field private mdrawcanvas:Landroid/graphics/Canvas;

.field mtime:Landroid/text/format/Time;

.field private oneRunnable:Ljava/lang/Runnable;

.field private redrawCalendarRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const v4, 0x3020010

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lnubia/fancydrawable/FancyDrawable;-><init>()V

    .line 36
    iput-boolean v3, p0, Lnubia/fancydrawable/DateDrawable;->mPaused:Z

    .line 37
    iput-wide v6, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    .line 38
    iput-wide v6, p0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    .line 39
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 40
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 41
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .line 43
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 44
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 48
    iput v3, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 49
    iput v3, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 50
    iput-boolean v3, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    .line 55
    iput-boolean v3, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 87
    new-instance v2, Lnubia/fancydrawable/DateDrawable$1;

    invoke-direct {v2, p0}, Lnubia/fancydrawable/DateDrawable$1;-><init>(Lnubia/fancydrawable/DateDrawable;)V

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v2, Lnubia/fancydrawable/DateDrawable$2;

    invoke-direct {v2, p0}, Lnubia/fancydrawable/DateDrawable$2;-><init>(Lnubia/fancydrawable/DateDrawable;)V

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    .line 59
    const-string v2, "DateDrawable"

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mID:Ljava/lang/String;

    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    .line 65
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    const v3, 0x3020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 66
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 68
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 71
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    .line 72
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lnubia/fancydrawable/DateDrawable;->setIntrinsicSize(II)V

    .line 74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    .line 77
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 78
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    .line 79
    iget-object v2, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 80
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lnubia/fancydrawable/DateDrawable;->getBitmapByday(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmapday":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 84
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    return-void
.end method

.method static synthetic access$002(Lnubia/fancydrawable/DateDrawable;J)J
    .locals 1
    .param p0, "x0"    # Lnubia/fancydrawable/DateDrawable;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    return-wide p1
.end method

.method private getBitmapByday(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "day"    # I

    .prologue
    const v7, 0x3020014

    .line 130
    const/4 v5, 0x1

    if-lt p1, v5, :cond_0

    const/16 v5, 0x1f

    if-le p1, v5, :cond_1

    .line 131
    :cond_0
    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 132
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fancydrawable_day_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "bitmapName":Ljava/lang/String;
    const-class v2, Lcn/nubia/internal/R$drawable;

    .line 136
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 137
    .local v4, "id":I
    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "bitmapDay":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 138
    .end local v0    # "bitmapDay":Landroid/graphics/Bitmap;
    .end local v4    # "id":I
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    iget-object v5, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmapDay":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getbitmapDayAndBG(I)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "day"    # I

    .prologue
    .line 164
    const/4 v5, 0x0

    .line 165
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 166
    .local v14, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 168
    .local v8, "dayandBG":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v9, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    .line 171
    .local v9, "drawablebg":Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-direct/range {p0 .. p1}, Lnubia/fancydrawable/DateDrawable;->getdrawableByday(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 174
    .local v10, "drawableday":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawableMask:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    move-object/from16 v0, p0

    iget v7, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    .line 177
    .local v7, "dayAvailableWidth":I
    move-object/from16 v0, p0

    iget v6, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    .line 178
    .local v6, "dayAvailableHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v12, v0

    .line 181
    .local v12, "fAvailableWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v11, v0

    .line 182
    .local v11, "fAvailableHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v12, v18

    .line 183
    .local v16, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapW:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v7, v0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v16, v11, v18

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->daybitmapH:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v6, v0

    .line 187
    .end local v11    # "fAvailableHeight":F
    .end local v12    # "fAvailableWidth":F
    .end local v16    # "scale":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    div-int/lit8 v13, v18, 0x2

    .line 188
    .local v13, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v18, v0

    sub-int v18, v18, v6

    div-int/lit8 v17, v18, 0x2

    .line 189
    .local v17, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v18, v0

    add-int v18, v18, v7

    div-int/lit8 v15, v18, 0x2

    .line 190
    .local v15, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v18, v0

    add-int v18, v18, v6

    div-int/lit8 v4, v18, 0x2

    .line 193
    .local v4, "bottom":I
    move/from16 v0, v17

    invoke-virtual {v10, v13, v0, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    return-object v8
.end method

.method private getdrawableByday(I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "day"    # I

    .prologue
    .line 147
    iget-object v7, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    const v8, 0x3020014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 148
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v5, "mdrawableday":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    const/16 v7, 0x1f

    if-le p1, v7, :cond_1

    :cond_0
    move-object v6, v5

    .line 160
    .end local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    .local v6, "mdrawableday":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 151
    .end local v6    # "mdrawableday":Ljava/lang/Object;
    .restart local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fancydrawable_day_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "bitmapName":Ljava/lang/String;
    const-class v1, Lcn/nubia/internal/R$drawable;

    .line 154
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Lcn/nubia/internal/R$drawable;>;"
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 155
    .local v3, "id":I
    iget-object v7, p0, Lnubia/fancydrawable/DateDrawable;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 156
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    .local v6, "mdrawableday":Landroid/graphics/drawable/Drawable;
    move-object v5, v6

    .end local v3    # "id":I
    .end local v6    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "mdrawableday":Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object v6, v5

    .line 160
    .local v6, "mdrawableday":Ljava/lang/Object;
    goto :goto_0

    .line 157
    .end local v6    # "mdrawableday":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private onTimeChanged()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method private showToday(I)V
    .locals 4
    .param p1, "today"    # I

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method private showTurnPage(IILandroid/graphics/Canvas;)V
    .locals 24
    .param p1, "ShowDay"    # I
    .param p2, "DstDay"    # I
    .param p3, "drawcanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 207
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 208
    invoke-direct/range {p0 .. p1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    .line 209
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lnubia/fancydrawable/DateDrawable;->getbitmapDayAndBG(I)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarSrcBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    .line 218
    const/4 v15, 0x0

    .line 219
    .local v15, "srcRect":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 220
    .local v8, "dstRect":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 221
    .local v14, "matrixEx":Landroid/graphics/Matrix;
    const/4 v4, 0x0

    .line 222
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 223
    .local v6, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .line 224
    .local v5, "bitmapCanvas":Landroid/graphics/Canvas;
    const/4 v11, 0x0

    .line 225
    .local v11, "matrix":Lnubia/fancydrawable/Matrix4x4;
    const/4 v10, 0x0

    .line 227
    .local v10, "interpolator":Landroid/view/animation/Interpolator;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    const-wide/32 v22, 0xf4240

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    .line 228
    move-object/from16 v0, p0

    iget-wide v0, v0, Lnubia/fancydrawable/DateDrawable;->mCurrTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lnubia/fancydrawable/DateDrawable;->mStartTime:J

    move-wide/from16 v22, v0

    sub-long v12, v20, v22

    .line 230
    .local v12, "lastTime":J
    const-wide/16 v20, 0x3e8

    cmp-long v19, v12, v20

    if-ltz v19, :cond_1

    .line 231
    const/high16 v16, 0x3f800000    # 1.0f

    .line 236
    .local v16, "value":F
    :goto_0
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    .end local v10    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 237
    .restart local v10    # "interpolator":Landroid/view/animation/Interpolator;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 240
    .local v17, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 241
    .local v9, "height":I
    div-int/lit8 v18, v9, 0x2

    .line 242
    .local v18, "y":I
    new-instance v15, Landroid/graphics/Rect;

    .end local v15    # "srcRect":Landroid/graphics/Rect;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-direct {v15, v0, v1, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 243
    .restart local v15    # "srcRect":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    .end local v8    # "dstRect":Landroid/graphics/Rect;
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 244
    .restart local v8    # "dstRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Canvas;

    .end local v6    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    .restart local v6    # "canvas":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Matrix;

    .end local v14    # "matrixEx":Landroid/graphics/Matrix;
    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 247
    .restart local v14    # "matrixEx":Landroid/graphics/Matrix;
    new-instance v11, Lnubia/fancydrawable/Matrix4x4;

    .end local v11    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-direct {v11}, Lnubia/fancydrawable/Matrix4x4;-><init>()V

    .line 253
    .restart local v11    # "matrix":Lnubia/fancydrawable/Matrix4x4;
    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 254
    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 257
    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 258
    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v8, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    if-ltz v18, :cond_0

    move/from16 v0, v18

    if-lt v0, v9, :cond_2

    .line 306
    :cond_0
    :goto_1
    return-void

    .line 233
    .end local v9    # "height":I
    .end local v16    # "value":F
    .end local v17    # "width":I
    .end local v18    # "y":I
    :cond_1
    long-to-float v0, v12

    move/from16 v19, v0

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v16, v19, v20

    .restart local v16    # "value":F
    goto/16 :goto_0

    .line 264
    .restart local v9    # "height":I
    .restart local v17    # "width":I
    .restart local v18    # "y":I
    :cond_2
    const/high16 v19, 0x3f000000    # 0.5f

    cmpg-float v19, v16, v19

    if-gez v19, :cond_3

    .line 265
    const/high16 v19, 0x43340000    # 180.0f

    mul-float v7, v19, v16

    .line 266
    .local v7, "degree":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 268
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 269
    .restart local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarLastBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 270
    const/16 v19, 0x0

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 271
    invoke-virtual {v11, v7}, Lnubia/fancydrawable/Matrix4x4;->postRotateX(F)Z

    .line 272
    const/16 v19, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    .line 292
    :goto_2
    invoke-virtual {v11}, Lnubia/fancydrawable/Matrix4x4;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    .line 294
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v4, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 298
    const/high16 v19, 0x3f800000    # 1.0f

    cmpg-float v19, v16, v19

    if-gez v19, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x64

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 274
    .end local v7    # "degree":F
    :cond_3
    const/high16 v19, 0x43340000    # 180.0f

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v20, v16, v20

    mul-float v19, v19, v20

    const/high16 v20, 0x43870000    # 270.0f

    add-float v7, v19, v20

    .line 275
    .restart local v7    # "degree":F
    sub-int v19, v9, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarDstBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    move/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 277
    new-instance v5, Landroid/graphics/Canvas;

    .end local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .restart local v5    # "bitmapCanvas":Landroid/graphics/Canvas;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 279
    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 280
    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 281
    iput v9, v15, Landroid/graphics/Rect;->bottom:I

    .line 282
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 283
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 284
    move/from16 v0, v17

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 285
    sub-int v19, v9, v18

    move/from16 v0, v19

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lnubia/fancydrawable/DateDrawable;->mCalendarCurrBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v15, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 288
    invoke-virtual {v11, v7}, Lnubia/fancydrawable/Matrix4x4;->postRotateX(F)Z

    .line 289
    const/16 v19, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Lnubia/fancydrawable/Matrix4x4;->postTranslate(FFF)Z

    goto/16 :goto_2

    .line 303
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    goto/16 :goto_1
.end method


# virtual methods
.method public SetTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Landroid/text/format/Time;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    .line 373
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    if-nez v0, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lnubia/fancydrawable/DateDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableWidth:I

    .line 109
    invoke-virtual {p0}, Lnubia/fancydrawable/DateDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mAvailableHeight:I

    .line 111
    :cond_1
    iput-object p1, p0, Lnubia/fancydrawable/DateDrawable;->mdrawcanvas:Landroid/graphics/Canvas;

    .line 112
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 113
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 116
    iget-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    if-nez v0, :cond_2

    .line 117
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    invoke-direct {p0, v0}, Lnubia/fancydrawable/DateDrawable;->showToday(I)V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_2
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    if-eq v0, v1, :cond_3

    .line 120
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    invoke-direct {p0, v0, v1, p1}, Lnubia/fancydrawable/DateDrawable;->showTurnPage(IILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 122
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 123
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    invoke-direct {p0, v0}, Lnubia/fancydrawable/DateDrawable;->showToday(I)V

    goto :goto_0
.end method

.method public pageChange()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 356
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mtime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    .line 357
    iget v0, p0, Lnubia/fancydrawable/DateDrawable;->mShowDay:I

    iget v1, p0, Lnubia/fancydrawable/DateDrawable;->mDstDay:I

    if-eq v0, v1, :cond_0

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->isTurnPage:Z

    .line 360
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    :cond_0
    return-void
.end method

.method public pauseRun()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public resumeRun()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public startToRun()V
    .locals 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/fancydrawable/DateDrawable;->bstarted:Z

    .line 327
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->redrawCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    iget-object v0, p0, Lnubia/fancydrawable/DateDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/fancydrawable/DateDrawable;->oneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public timeChange()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method
