.class public Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

.field private mContainerView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callbacks"    # Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 93
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    const/high16 v2, 0x10e0000

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 98
    iput-object p1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    .line 99
    iput-object p2, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 100
    iput-object p3, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    .line 101
    return-void
.end method

.method static synthetic access$0(Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->performDismiss(Landroid/view/View;)V

    return-void
.end method

.method private performDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    .line 252
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 108
    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    .line 112
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 247
    :cond_1
    :goto_0
    const/4 v10, 0x0

    :goto_1
    return v10

    .line 115
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 117
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v10, v11}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->pauseTimer(Z)V

    .line 119
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 120
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 126
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 130
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->pauseTimer(Z)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    sub-float v5, v10, v11

    .line 132
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 135
    .local v9, "velocityX":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 136
    .local v2, "absVelocityX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 137
    .local v3, "absVelocityY":F
    const/4 v7, 0x0

    .line 138
    .local v7, "dismiss":Z
    const/4 v8, 0x0

    .line 139
    .local v8, "dismissRight":Z
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_7

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_7

    .line 140
    const/4 v7, 0x1

    .line 141
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_6

    const/4 v8, 0x1

    .line 149
    :cond_3
    :goto_2
    if-eqz v7, :cond_d

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 152
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    :goto_3
    int-to-float v10, v10

    invoke-virtual {v11, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 153
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 154
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 155
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 156
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 157
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 158
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 159
    new-instance v11, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;-><init>(Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 176
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 178
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 180
    :cond_5
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 181
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 182
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 183
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 141
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 142
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v10, v10

    cmpg-float v10, v10, v2

    if-gtz v10, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    .line 143
    cmpg-float v10, v3, v2

    if-gez v10, :cond_3

    .line 144
    cmpg-float v10, v3, v2

    if-gez v10, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_3

    .line 146
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_8

    const/4 v10, 0x1

    move v11, v10

    :goto_5
    const/4 v10, 0x0

    cmpg-float v10, v5, v10

    if-gez v10, :cond_9

    const/4 v10, 0x1

    :goto_6
    if-ne v11, v10, :cond_a

    const/4 v7, 0x1

    .line 147
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    const/4 v8, 0x1

    :goto_8
    goto/16 :goto_2

    .line 146
    :cond_8
    const/4 v10, 0x0

    move v11, v10

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    goto :goto_7

    .line 147
    :cond_b
    const/4 v8, 0x0

    goto :goto_8

    .line 152
    :cond_c
    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    neg-int v10, v10

    goto/16 :goto_3

    .line 165
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_4

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 168
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 169
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 170
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 171
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 172
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 173
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 174
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 188
    .end local v2    # "absVelocityX":F
    .end local v3    # "absVelocityY":F
    .end local v5    # "deltaX":F
    .end local v7    # "dismiss":Z
    .end local v8    # "dismissRight":Z
    .end local v9    # "velocityX":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 193
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 194
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 195
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 196
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 197
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 198
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 199
    move-object/from16 v0, p0

    iget-wide v12, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 200
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 201
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 202
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 203
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 204
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 205
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 210
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    sub-float v5, v10, v11

    .line 216
    .restart local v5    # "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    sub-float v6, v10, v11

    .line 217
    .local v6, "deltaY":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_f

    .line 218
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    .line 219
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_10

    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    :goto_9
    move-object/from16 v0, p0

    iput v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 228
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    or-int/lit8 v10, v10, 0x3

    .line 227
    invoke-virtual {v4, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 230
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 231
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_1

    .line 235
    move-object/from16 v0, p0

    iput v5, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 236
    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v10, v10

    sub-float v10, v5, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 239
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    .line 238
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 240
    move-object/from16 v0, p0

    iget-object v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    const v11, 0x3e4ccccd    # 0.2f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 241
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 240
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 242
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 219
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    neg-int v10, v10

    goto/16 :goto_9

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
