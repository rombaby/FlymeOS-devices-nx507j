.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final FLING_TICK_DECAY:F = 0.8f

.field private static final LOCAL_DEBUG:Z = false

.field private static final LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private mAccumulatedX:F

.field private mAccumulatedY:F

.field private mActivePointerId:I

.field private mConfigMaxFlingVelocity:F

.field private mConfigMinFlingVelocity:F

.field private mConfigTickDistance:F

.field private mConsumedMovement:Z

.field private mCurrentDeviceId:I

.field private mCurrentDeviceSupported:Z

.field private mCurrentSource:I

.field private final mFlingRunnable:Ljava/lang/Runnable;

.field private mFlingVelocity:F

.field private mFlinging:Z

.field private mLastX:F

.field private mLastY:F

.field private mPendingKeyCode:I

.field private mPendingKeyDownTime:J

.field private mPendingKeyMetaState:I

.field private mPendingKeyRepeatCount:I

.field private mStartX:F

.field private mStartY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4693
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 4694
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 4643
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 4663
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 4685
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 4983
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    .line 4695
    return-void
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .prologue
    .line 4611
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    return v0
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .prologue
    .line 4611
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    return v0
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 4611
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    return-void
.end method

.method static synthetic access$1532(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # F

    .prologue
    .line 4611
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return v0
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # J

    .prologue
    .line 4611
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 4611
    iput-boolean p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
    .param p1, "x1"    # J

    .prologue
    .line 4611
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 4977
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    if-eqz v0, :cond_0

    .line 4978
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4979
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 4981
    :cond_0
    return-void
.end method

.method private consumeAccumulatedMovement(JIFII)F
    .locals 1
    .param p1, "time"    # J
    .param p3, "metaState"    # I
    .param p4, "accumulator"    # F
    .param p5, "negativeKeyCode"    # I
    .param p6, "positiveKeyCode"    # I

    .prologue
    .line 4864
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    .line 4865
    invoke-direct {p0, p1, p2, p5, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 4866
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    add-float/2addr p4, v0

    goto :goto_0

    .line 4868
    :cond_0
    :goto_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    .line 4869
    invoke-direct {p0, p1, p2, p6, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 4870
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    sub-float/2addr p4, v0

    goto :goto_1

    .line 4872
    :cond_1
    return p4
.end method

.method private consumeAccumulatedMovement(JI)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "metaState"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4843
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 4844
    .local v0, "absX":F
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 4845
    .local v8, "absY":F
    cmpl-float v1, v0, v8

    if-ltz v1, :cond_1

    .line 4846
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 4847
    iget v5, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    const/16 v6, 0x15

    const/16 v7, 0x16

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 4849
    iput v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 4850
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    .line 4860
    :cond_0
    :goto_0
    return-void

    .line 4853
    :cond_1
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v1, v8, v1

    if-ltz v1, :cond_0

    .line 4854
    iget v5, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    const/16 v6, 0x13

    const/16 v7, 0x14

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 4856
    iput v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 4857
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_0
.end method

.method private finishKeys(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 4830
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancelFling()V

    .line 4831
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 4832
    return-void
.end method

.method private finishTracking(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 4835
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-ltz v0, :cond_0

    .line 4836
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 4837
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 4838
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4840
    :cond_0
    return-void
.end method

.method private postFling(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 4963
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    iget v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 4964
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    iget v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 4965
    .local v0, "delay":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    add-long v4, p1, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 4971
    const/4 v2, 0x1

    .line 4973
    .end local v0    # "delay":J
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendKeyDownOrRepeat(JII)V
    .locals 15
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .prologue
    .line 4876
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    move/from16 v0, p3

    if-eq v2, v0, :cond_0

    .line 4877
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 4878
    move-wide/from16 v0, p1

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    .line 4879
    move/from16 v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 4880
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    .line 4884
    :goto_0
    move/from16 v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    .line 4893
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v3, Landroid/view/KeyEvent;

    iget-wide v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v8, 0x0

    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    iget v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    iget v11, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v12, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v13, 0x400

    iget v14, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4897
    return-void

    .line 4882
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    goto :goto_0
.end method

.method private sendKeyUp(J)V
    .locals 15
    .param p1, "time"    # J

    .prologue
    .line 4900
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v0, :cond_0

    .line 4905
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v6, 0x1

    iget v7, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v8, 0x0

    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v11, 0x0

    const/16 v12, 0x400

    iget v13, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4909
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 4911
    :cond_0
    return-void
.end method

.method private startFling(JFF)Z
    .locals 3
    .param p1, "time"    # J
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    const/4 v0, 0x0

    .line 4920
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    packed-switch v1, :pswitch_data_0

    .line 4955
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 4956
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    :cond_0
    return v0

    .line 4922
    :pswitch_0
    neg-float v1, p3

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 4924
    neg-float v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 4930
    :pswitch_1
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 4932
    iput p3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 4938
    :pswitch_2
    neg-float v1, p4

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 4940
    neg-float v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 4946
    :pswitch_3
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 4948
    iput p4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 4920
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4821
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 4823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 4824
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 4825
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 4827
    .end local v0    # "time":J
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4699
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    .line 4700
    .local v10, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    .line 4701
    .local v5, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    .line 4702
    .local v9, "source":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v9, :cond_3

    .line 4703
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 4704
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 4705
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 4706
    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 4707
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 4708
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    .line 4709
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_3

    .line 4712
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v15

    .line 4713
    .local v15, "xRange":Landroid/view/InputDevice$MotionRange;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v18

    .line 4714
    .local v18, "yRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v15, :cond_3

    if-eqz v18, :cond_3

    .line 4715
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 4718
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v16

    .line 4719
    .local v16, "xRes":F
    const/16 v20, 0x0

    cmpg-float v20, v16, v20

    if-gtz v20, :cond_1

    .line 4720
    invoke-virtual {v15}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v20

    const/high16 v21, 0x42400000    # 48.0f

    div-float v16, v20, v21

    .line 4722
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v19

    .line 4723
    .local v19, "yRes":F
    const/16 v20, 0x0

    cmpg-float v20, v19, v20

    if-gtz v20, :cond_2

    .line 4724
    invoke-virtual/range {v18 .. v18}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v20

    const/high16 v21, 0x42400000    # 48.0f

    div-float v19, v20, v21

    .line 4726
    :cond_2
    add-float v20, v16, v19

    const/high16 v21, 0x3f000000    # 0.5f

    mul-float v8, v20, v21

    .line 4729
    .local v8, "nominalRes":F
    const/high16 v20, 0x41400000    # 12.0f

    mul-float v20, v20, v8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    .line 4730
    const/high16 v20, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    .line 4732
    const/high16 v20, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    .line 4745
    .end local v4    # "device":Landroid/view/InputDevice;
    .end local v8    # "nominalRes":F
    .end local v15    # "xRange":Landroid/view/InputDevice$MotionRange;
    .end local v16    # "xRes":F
    .end local v18    # "yRange":Landroid/view/InputDevice$MotionRange;
    .end local v19    # "yRes":F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 4818
    :cond_4
    :goto_0
    return-void

    .line 4750
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 4751
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 4753
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 4754
    .local v3, "caughtFling":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 4755
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 4756
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 4757
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4759
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    .line 4760
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    .line 4761
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 4762
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 4763
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 4764
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 4768
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_0

    .line 4774
    .end local v3    # "caughtFling":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v20, v0

    if-ltz v20, :cond_4

    .line 4777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 4778
    .local v6, "index":I
    if-gez v6, :cond_6

    .line 4779
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 4780
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 4784
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4785
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 4786
    .local v14, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    .line 4787
    .local v17, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    move/from16 v21, v0

    sub-float v21, v14, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 4788
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    move/from16 v21, v0

    sub-float v21, v17, v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 4789
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 4790
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 4793
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 4794
    .local v7, "metaState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JI)V

    .line 4797
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v2, v0, :cond_4

    .line 4798
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 4800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    .line 4802
    .local v12, "vx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v13

    .line 4803
    .local v13, "vy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->startFling(JFF)Z

    move-result v20

    if-nez v20, :cond_7

    .line 4804
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 4807
    .end local v12    # "vx":F
    .end local v13    # "vy":F
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 4813
    .end local v6    # "index":I
    .end local v7    # "metaState":I
    .end local v14    # "x":F
    .end local v17    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 4814
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 4751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
