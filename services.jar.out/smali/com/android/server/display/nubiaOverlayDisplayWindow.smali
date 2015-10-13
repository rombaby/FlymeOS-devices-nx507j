.class final Lcom/android/server/display/nubiaOverlayDisplayWindow;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;,
        Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;,
        Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIELD_MULTI_WINDOW:Ljava/lang/String; = "ss_multi_window_enabled"

.field static final FIELD_SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final FIELD_SINGLE_UI_MODE_SENSOR_SWITCH:Ljava/lang/String; = "single_ui_mode_sensor_switch"

.field private static KEY_MENU_AND_HOME_POS:Ljava/lang/String; = null

.field private static final NUBIA_OVERLAY_DISPLAY_CLOSE_MODE:Ljava/lang/String; = "single_ui_close_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES:Ljava/lang/String; = "nubia_overlay_display_devices"

.field private static final NUBIA_OVERLAY_DISPLAY_DEVICES_MERMORY:Ljava/lang/String; = "nubia_overlay_display_devices_mermory"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final NUBIA_OVERLAY_DISPLAY_STATUS:Ljava/lang/String; = "single_ui_status"

.field private static final TAG:Ljava/lang/String; = "NubiaOverlayDisplayWindow"

.field private static mWindowVisible:Z


# instance fields
.field private final BW:I

.field private final DISABLE_MOVE_AND_RESIZE:Z

.field private final RESET_DELAY:J

.field private final STOP_REFRESH_DELAY:J

.field private final TW:I

.field private final WINDOW_ALPHA:F

.field private downTime:J

.field isLongClick:Z

.field private mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCloseSFRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHigherBarBackground:Landroid/view/ViewGroup;

.field private mHigherBarCenter:Landroid/view/ViewGroup;

.field private mHigherBarHeight:I

.field private mHigherBarLeft:Landroid/view/ViewGroup;

.field private mHigherBarRight:Landroid/view/ViewGroup;

.field mHigherBarVisible:Z

.field private mHigherCenterButton:Landroid/widget/ImageView;

.field private mHigherCenterHalo:Landroid/widget/ImageView;

.field private mHigherCenterRound:Landroid/widget/ImageView;

.field private mHigherLeftButton:Landroid/widget/ImageView;

.field private mHigherRightButton:Landroid/widget/ImageView;

.field private mIsRightHand:Z

.field private mIsSFRefreshing:Z

.field private final mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

.field private mLogicalHeight:I

.field private mLogicalWidth:I

.field private mLowerBarHeight:I

.field private mLowerCenterButton:Landroid/widget/ImageView;

.field private mLowerLeftButton:Landroid/widget/ImageView;

.field private mLowerRightButton:Landroid/widget/ImageView;

.field private mMaxWidthVitrualScreen:I

.field private mMinWidthVitrualScreen:I

.field private mMovingHintHeight:I

.field private mMovingHintLower:Landroid/view/View;

.field private mMovingHintPosOffset:I

.field private mMovingHintUpper:Landroid/view/View;

.field private mMovingMask:Landroid/view/ViewGroup;

.field private mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

.field private mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

.field private mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

.field private mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

.field private mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

.field private mRotated:I

.field private mSFHandler:Landroid/os/Handler;

.field private mScaleX:F

.field private mScaleY:F

.field private mScreenBackGround:Landroid/view/View;

.field private mScreenWithBar:Landroid/view/ViewGroup;

.field private mSizeBar:Landroid/view/ViewGroup;

.field private mSizeSlideBar:Landroid/view/ViewGroup;

.field private mSizeSlideBarRail:Landroid/view/View;

.field private mSizeSlideBarThumb:Landroid/view/View;

.field private mSizeSlideBarThumbHalo:Landroid/view/View;

.field private mSizerButton:Landroid/widget/ImageView;

.field private mSizerMask:Landroid/view/ViewGroup;

.field private mSlideBarThumbHeight:I

.field private mSlideBarWidth:I

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVitrualScreen:Landroid/view/ViewGroup;

.field private mWidth:I

.field private mWindowContentBg:Landroid/view/View;

.field private mWindowContentNew:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowParams2:Landroid/view/WindowManager$LayoutParams;

.field private mX:I

.field private mY:I

.field private onBarClickListener:Landroid/view/View$OnClickListener;

.field private onBarLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onBarTouchListener:Landroid/view/View$OnTouchListener;

.field private onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private onSlideBarTouch:Landroid/view/View$OnTouchListener;

.field private onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private final rate:F

.field private upTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 564
    const-string v0, "persist.sys.key.menu2back"

    sput-object v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIIILjava/lang/String;DLcom/android/server/display/nubiaOverlayDisplayWindow$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "gravity"    # I
    .param p9, "leftOrRight"    # Ljava/lang/String;
    .param p10, "rate"    # D
    .param p12, "listener"    # Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->WINDOW_ALPHA:F

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->DISABLE_MOVE_AND_RESIZE:Z

    .line 163
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    .line 229
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->RESET_DELAY:J

    .line 565
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    .line 566
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->upTime:J

    .line 631
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->BW:I

    .line 632
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->TW:I

    .line 671
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 706
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$2;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 849
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    .line 851
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    .line 869
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->STOP_REFRESH_DELAY:J

    .line 870
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    .line 871
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    .line 872
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$4;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    .line 906
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    .line 907
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isLongClick:Z

    .line 936
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 966
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 1046
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$8;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 1198
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 1270
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$10;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$10;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideBarTouch:Landroid/view/View$OnTouchListener;

    .line 1554
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$14;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$14;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

    .line 1580
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$15;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$15;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

    .line 1606
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

    .line 1622
    new-instance v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;

    invoke-direct {v0, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    .line 234
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    .line 235
    iput p3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    .line 236
    iput p4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    .line 237
    double-to-float v0, p10

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    .line 238
    iput p6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 239
    iput p5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 240
    iput p8, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mGravity:I

    .line 241
    iput-object p12, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    .line 243
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 245
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 247
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    .line 248
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 250
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    .line 251
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    .line 253
    const-string v0, "right"

    invoke-virtual {p9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 259
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createWindow()V

    .line 260
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    goto :goto_0
.end method

.method private ResetMovingHintAccordingToScreen()V
    .locals 5

    .prologue
    .line 1184
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 1186
    .local v0, "x":F
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 1188
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 1189
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1190
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 1191
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 1192
    return-void
.end method

.method private ResetSlideBarAccordingToScreen()V
    .locals 7

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1145
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 1151
    .local v2, "x":F
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1153
    .local v0, "currentHeight":I
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    sub-int/2addr v4, v0

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1154
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    mul-int/lit8 v6, v6, 0x10

    div-int/lit8 v6, v6, 0x9

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1158
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1160
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    mul-int/lit8 v4, v4, 0x10

    div-int/lit8 v4, v4, 0x9

    sub-int v4, v0, v4

    int-to-float v1, v4

    .line 1161
    .local v1, "thumbPosVerse":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    .line 1162
    const/4 v1, 0x0

    .line 1163
    :cond_0
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1164
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float v3, v4, v5

    .line 1166
    .local v3, "y":F
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 1167
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 1169
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    .line 1170
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1171
    return-void

    .line 1148
    .end local v0    # "currentHeight":I
    .end local v1    # "thumbPosVerse":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    .restart local v2    # "x":F
    goto/16 :goto_0

    .line 1156
    .restart local v0    # "currentHeight":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    sub-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x10

    div-int/lit8 v5, v5, 0x9

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/nubiaOverlayDisplayWindow;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showScreenHigherBarAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingHint()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingStartAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # F

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    return-wide v0
.end method

.method static synthetic access$5502(Lcom/android/server/display/nubiaOverlayDisplayWindow;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;
    .param p1, "x1"    # J

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/DisplayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSide()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    return-void
.end method

.method private adjustSlideBarBlockPosition(F)V
    .locals 3
    .param p1, "deltaY"    # F

    .prologue
    const/4 v2, 0x0

    .line 1318
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1327
    :cond_0
    return-void
.end method

.method private changeSide()V
    .locals 2

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    .line 830
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 832
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 833
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    .line 839
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    const v1, 0x3020137

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 840
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    const v1, 0x302012c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 841
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 842
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSideAnimation()V

    .line 844
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 836
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 837
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method private changeSideAnimation()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1506
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    const-string v2, "translationX"

    new-array v3, v3, [F

    aput v6, v3, v7

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1511
    .local v0, "oaVScreen":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1512
    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1537
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1538
    return-void

    .line 1509
    .end local v0    # "oaVScreen":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    const-string v2, "translationX"

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v7

    aput v6, v3, v8

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "oaVScreen":Landroid/animation/ObjectAnimator;
    goto :goto_0
.end method

.method private declared-synchronized changeSurfaceFlingerRefreshOptions(Z)V
    .locals 6
    .param p1, "doRefreshing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 879
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsSFRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :try_start_1
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 882
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 884
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 885
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 886
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 888
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 879
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 890
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private createShowAnimation()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    .line 282
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showEnterAnimation()V

    .line 283
    return-void
.end method

.method private createWindow()V
    .locals 13

    .prologue
    const/16 v12, 0x7ea

    const/4 v11, 0x1

    const v10, 0x3f7d70a4    # 0.99f

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 365
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 367
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 368
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x3030030

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    .line 370
    const v4, 0x3030031

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    .line 373
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 374
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x308005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    .line 375
    const v4, 0x308005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    .line 377
    const v4, 0x308005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarWidth:I

    .line 378
    const v4, 0x308005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    .line 380
    const v4, 0x308005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    .line 381
    const v4, 0x308005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    .line 383
    const v4, 0x3080060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintPosOffset:I

    .line 384
    const v4, 0x3080061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintHeight:I

    .line 386
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->legalizeInitSizeAndPos()V

    .line 389
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    .line 390
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v7, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x5a

    invoke-static {v4, v5, v6}, Lnubia/util/BlurUtil;->clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    .local v0, "backgroundBlured":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 393
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenBackGround:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 396
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0079

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    .line 397
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 400
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    .line 401
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 402
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 405
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 410
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 412
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0073

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    .line 413
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 417
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0077

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    .line 418
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 422
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0071

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    .line 423
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 425
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onBarLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 427
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0074

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    .line 428
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0075

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;

    .line 429
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0076

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;

    .line 430
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onMoveButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0072

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    .line 432
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 434
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0078

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    .line 435
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 437
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 439
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarRight:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 440
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    .line 446
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    const v5, 0x3020137

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    const v5, 0x302012c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0083

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    .line 450
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0082

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    .line 452
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    .line 453
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 455
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 457
    .local v2, "lowerBar":Landroid/view/View;
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0086

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    .line 458
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0088

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    .line 459
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 461
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->onSlideBarTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 462
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0089

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;

    .line 463
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0087

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    .line 464
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarRail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSlideBarThumbHeight:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0084

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    .line 467
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0085

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    .line 469
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    .line 470
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    .line 471
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 472
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 475
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;

    .line 477
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    if-ge v4, v5, :cond_4

    .line 478
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    .line 479
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    .line 486
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    .line 487
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d0081

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    .line 488
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    .line 490
    const-string v4, "nubia"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 491
    const-string v4, "zte"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 492
    const-string v4, "TAG"

    const-string v5, "single ui load zte resources"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_2
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    const v5, 0x302012e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 497
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    const v5, 0x3020130

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    const v5, 0x3020130

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemLeftKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 502
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 503
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemRightKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 505
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemHomeKeyTouched:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mOnSystemKeyLongClicked:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 508
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    const v5, 0x30d007a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 510
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v9}, Landroid/view/TextureView;->setPivotX(F)V

    .line 511
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v9}, Landroid/view/TextureView;->setPivotY(F)V

    .line 512
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 513
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 514
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v11}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 516
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 518
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 520
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 521
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 522
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 523
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 524
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 525
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 527
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4, v12}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    .line 529
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 530
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 531
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 532
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 533
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 534
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 537
    new-instance v4, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    .line 538
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;->observe()V

    .line 541
    new-instance v4, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    .line 542
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->observe()V

    .line 543
    return-void

    .line 442
    .end local v2    # "lowerBar":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;

    .line 443
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarLeft:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;

    .line 444
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 481
    .restart local v2    # "lowerBar":Landroid/view/View;
    :cond_4
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleX:F

    .line 482
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScaleY:F

    goto/16 :goto_1

    .line 494
    :cond_5
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "single ui was started by unknown brand = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private hideHaloAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v2, 0x3dcccccd    # 0.1f

    .line 1546
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1547
    .local v0, "halo":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1548
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1549
    return-void
.end method

.method private hideScreenHigherBarAnimation()V
    .locals 4

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1500
    .local v0, "oaHigherBar":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1501
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1502
    return-void

    .line 1499
    nop

    :array_0
    .array-data 4
        0x3e851eb8    # 0.26f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method private isRightHand()Z
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsRightHand:Z

    return v0
.end method

.method private legalizeInitSizeAndPos()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 548
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    if-gt v0, v1, :cond_0

    .line 549
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 550
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 552
    :cond_0
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    if-lt v0, v1, :cond_1

    .line 553
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 554
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMaxWidthVitrualScreen:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 557
    :cond_1
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    if-gtz v0, :cond_2

    iput v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    .line 558
    :cond_2
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mX:I

    .line 559
    :cond_3
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    if-gtz v0, :cond_4

    iput v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    .line 560
    :cond_4
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5

    .line 561
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mY:I

    .line 562
    :cond_5
    return-void
.end method

.method private declared-synchronized needSingleLayerRefreshHere()V
    .locals 4

    .prologue
    .line 894
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mIsSFRefreshing:Z

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSurfaceFlingerRefreshOptions(Z)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 898
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    monitor-exit p0

    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private relayout()V
    .locals 3

    .prologue
    .line 697
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    :cond_0
    return-void
.end method

.method private resetMovingMask()V
    .locals 3

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1384
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1385
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1386
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1387
    return-void
.end method

.method private resetSizerMask()V
    .locals 3

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1393
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1394
    return-void
.end method

.method private setInputRect(IIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 636
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 637
    .local v2, "mRect3":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mRotated:I

    packed-switch v3, :pswitch_data_0

    .line 641
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 643
    .local v0, "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 668
    .local v1, "mRect2":Landroid/graphics/Rect;
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/display/SingleUIRectNotifyer;->notifyInputDispatcherSingleUIRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 669
    return-void

    .line 645
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 646
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x32

    add-int v4, p1, p3

    add-int v5, p2, p4

    invoke-direct {v1, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 648
    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 650
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 652
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 654
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, 0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, 0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 655
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, 0x64

    add-int/lit8 v4, v4, -0x32

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, 0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 657
    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto :goto_0

    .line 659
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v3, p2, -0x64

    add-int v4, p1, p4

    add-int/lit8 v5, p2, -0x64

    add-int/2addr v5, p3

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 661
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit8 v4, p2, -0x64

    add-int/lit16 v4, v4, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int/lit8 v6, p2, -0x64

    add-int/2addr v6, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 663
    .end local v0    # "mRect":Landroid/graphics/Rect;
    .end local v1    # "mRect2":Landroid/graphics/Rect;
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p1, p4

    add-int v4, p2, p3

    invoke-direct {v0, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 664
    .restart local v0    # "mRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, p1, -0x32

    add-int/lit16 v4, p2, -0x96

    add-int v5, p1, p4

    add-int/lit8 v5, v5, 0x32

    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x32

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "mRect2":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "l"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 349
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x1000328

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 358
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 360
    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 361
    const-string v0, "singleUI_view_layer"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method private showEnterAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1422
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 1423
    .local v1, "scale":F
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .line 1424
    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .line 1426
    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v2

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1429
    .local v0, "enter":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1430
    new-instance v2, Lcom/android/server/display/nubiaOverlayDisplayWindow$11;

    invoke-direct {v2, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$11;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1444
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1445
    return-void

    .line 1426
    .end local v0    # "enter":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showExitAnimation()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1448
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 1449
    .local v2, "scale":F
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    int-to-float v4, v4

    add-float v9, v3, v4

    .line 1450
    .local v9, "deltaY":F
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v8, v9, v3

    .line 1452
    .local v8, "p":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v3

    if-eqz v3, :cond_0

    move v6, v1

    :goto_0
    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1455
    .local v0, "exit":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1456
    new-instance v1, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;

    invoke-direct {v1, p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;-><init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1479
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1481
    return-void

    .line 1452
    .end local v0    # "exit":Landroid/view/animation/ScaleAnimation;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private showHaloAnimation(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v1, 0x3dcccccd    # 0.1f

    .line 1541
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1542
    .local v0, "halo":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1543
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1544
    return-void
.end method

.method private showMovingHint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1174
    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v0, v1

    .line 1176
    .local v0, "maxY":F
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float v2, v0, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    return-void
.end method

.method private showMovingStartAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    .line 1485
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1486
    .local v1, "oaMovingUpper":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1487
    .local v0, "oaMovingLower":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1488
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1489
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1490
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1492
    return-void

    .line 1485
    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data

    .line 1486
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private showScreenHigherBarAnimation()V
    .locals 4

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarBackground:Landroid/view/ViewGroup;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1495
    .local v0, "oaHigherBar":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1496
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1497
    return-void

    .line 1494
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e851eb8    # 0.26f
    .end array-data
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const-string v0, "NubiaOverlayDisplayWindow"

    const-string v1, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateWindowParams()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 594
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 595
    .local v1, "rotation":I
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 596
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch v1, :pswitch_data_0

    .line 601
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 602
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 603
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalWidth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 604
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 607
    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 608
    .local v2, "tran_x":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 609
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 610
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleX(F)V

    .line 611
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setScaleY(F)V

    .line 613
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetInputRect()V

    .line 627
    .end local v2    # "tran_x":F
    :goto_0
    return v5

    .line 619
    :pswitch_1
    const-string v3, "NubiaOverlayDisplayWindow"

    const-string v4, "singleUI closed for screen is landscape"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_close_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "single_ui_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public adjustScreenPosition(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 1110
    const/4 p1, 0x0

    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, "minY":F
    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLogicalHeight:I

    int-to-float v0, v2

    .line 1115
    .local v0, "maxY":F
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    add-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 1117
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    add-float/2addr v2, p2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    sub-float p2, v1, v2

    .line 1132
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 1134
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V

    .line 1135
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    .line 1136
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 1137
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 1138
    return-void

    .line 1119
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    sub-float v3, v0, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1121
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float p2, v2, v3

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, p2

    sub-float v3, v0, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 1129
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public closeInputRect()V
    .locals 4

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setInputRect(IIII)V

    .line 1657
    return-void
.end method

.method public createDismissAnimation()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->showExitAnimation()V

    .line 327
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 286
    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createDismissAnimation()V

    .line 298
    .end local v0    # "status":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 3

    .prologue
    .line 302
    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "status":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_status"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 311
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 313
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    .line 314
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    .end local v0    # "status":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindowParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleX()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTextureView.getScaleY()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public resetInputRect()V
    .locals 4

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setInputRect(IIII)V

    .line 1664
    return-void
.end method

.method public sendInjectEvent(II)V
    .locals 15
    .param p1, "action"    # I
    .param p2, "actionCode"    # I

    .prologue
    .line 569
    packed-switch p1, :pswitch_data_0

    .line 591
    :goto_0
    return-void

    .line 571
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    .line 572
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 575
    .local v13, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 577
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 582
    .end local v13    # "down":Landroid/view/KeyEvent;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->upTime:J

    .line 583
    iget-wide v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J

    iget-wide v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->upTime:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p2

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 586
    .local v14, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 588
    invoke-virtual {v14}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScreenSize(F)V
    .locals 9
    .param p1, "width"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 1331
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1332
    .local v1, "oriX":I
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1334
    .local v2, "oriY":I
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1335
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarHeight:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1338
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 1341
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 1347
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, p1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1348
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1350
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    .line 1351
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    .line 1354
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mListener:Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/display/nubiaOverlayDisplayWindow$Listener;->onWindowSizeChanged(II)V

    .line 1357
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1358
    new-instance v4, Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    .line 1359
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVitrualScreen:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1361
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setPivotX(F)V

    .line 1362
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v7}, Landroid/view/TextureView;->setPivotY(F)V

    .line 1363
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1364
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1365
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1367
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v4, v5}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1369
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1370
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v3, v4, v5

    .line 1371
    .local v3, "tran_x":F
    neg-float v4, v3

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1372
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1373
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleX(F)V

    .line 1374
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4, v8}, Landroid/view/TextureView;->setScaleY(F)V

    .line 1377
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V

    .line 1378
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V

    .line 1379
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V

    .line 1380
    return-void

    .line 1344
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "tran_x":F
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mScreenWithBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_0
.end method

.method public setSizerMaskSize(F)V
    .locals 5
    .param p1, "width"    # F

    .prologue
    .line 1398
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1399
    .local v0, "oriX":I
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1401
    .local v1, "oriY":I
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1402
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerBarHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1405
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isRightHand()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    .line 1408
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    .line 1414
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1415
    return-void

    .line 1411
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 266
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateWindowParams()Z

    .line 273
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams2:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-direct {p0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->createShowAnimation()V

    goto :goto_0
.end method

.method public updateSUMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 776
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ss_multi_window_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 777
    .local v0, "isMultiWindow":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 782
    :cond_0
    return-void
.end method
