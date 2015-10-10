.class public Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;
.super Landroid/app/Fragment;
.source "ChooseLockGesture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGestureFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;,
        Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;,
        Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

.field protected mChooseNewLockGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

.field protected mChosenGesture:Landroid/gesture/Gesture;

.field private mClearGestureRunnable:Ljava/lang/Runnable;

.field private mDone:Z

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mGestureStore:Landroid/gesture/GestureStore;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockGestureView:Lcom/android/internal/widget/LockGestureView;

.field protected mMinPredictionScore:I

.field private mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    .line 130
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChooseNewLockGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    .line 289
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mDone:Z

    .line 292
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearGestureRunnable()V
    .locals 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 506
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockGestureView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    return-void
.end method

.method private saveChosenGestureAndFinish()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 510
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mDone:Z

    if-eqz v5, :cond_0

    .line 527
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 512
    .local v2, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isGestureEverChosen()Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 514
    .local v1, "lockVirgin":Z
    :goto_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    .local v0, "isFallback":Z
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockGesture(Landroid/gesture/Gesture;Z)V

    .line 517
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockGestureEnabled(Z)V

    .line 519
    if-eqz v1, :cond_1

    .line 520
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleGestureEnabled(Z)V

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->setResult(I)V

    .line 524
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 525
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mDone:Z

    .line 526
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "isFallback":Z
    .end local v1    # "lockVirgin":Z
    :cond_2
    move v1, v4

    .line 512
    goto :goto_1
.end method


# virtual methods
.method protected gestureMatch(Landroid/gesture/Gesture;)Z
    .locals 8
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    const/4 v3, 0x0

    .line 173
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    invoke-virtual {v4, p1}, Landroid/gesture/GestureStore;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    .local v2, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 175
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/gesture/Prediction;

    .line 176
    .local v1, "prediction":Landroid/gesture/Prediction;
    iget-wide v4, v1, Landroid/gesture/Prediction;->score:D

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mMinPredictionScore:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 177
    iget-object v4, v1, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    const-string v5, "lock_gesture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    const-string v5, "lock_gesture"

    invoke-virtual {v4, v5}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Gesture;

    .line 179
    .local v0, "foundGesture":Landroid/gesture/Gesture;
    invoke-virtual {v0}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 180
    const/4 v3, 0x1

    .line 186
    .end local v0    # "foundGesture":Landroid/gesture/Gesture;
    .end local v1    # "prediction":Landroid/gesture/Prediction;
    :cond_0
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    :cond_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    .line 374
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    .line 375
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 379
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Continue:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 387
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Continue:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_4
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto :goto_0

    .line 392
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Confirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 393
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Confirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_6
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->saveChosenGestureAndFinish()V

    goto/16 :goto_0

    .line 398
    :cond_7
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Ok:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    .line 404
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    sget-object v1, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Correct:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V

    .line 405
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 305
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    new-instance v1, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    .line 307
    new-instance v1, Landroid/gesture/GestureStore;

    invoke-direct {v1}, Landroid/gesture/GestureStore;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    .line 308
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    invoke-virtual {v1, v3}, Landroid/gesture/GestureStore;->setOrientationStyle(I)V

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mMinPredictionScore:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iput v3, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mMinPredictionScore:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 322
    const v5, 0x7f040020

    invoke-virtual {p1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 323
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f11004f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mHeaderText:Landroid/widget/TextView;

    .line 324
    const v5, 0x7f110050

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockGestureView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    .line 325
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChooseNewLockGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockGestureView;->setOnGestureListener(Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;)V

    .line 326
    const v5, 0x7f110051

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterText:Landroid/widget/TextView;

    .line 328
    const v5, 0x7f110052

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 329
    const v5, 0x7f110053

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 331
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v5, 0x7f11004e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 339
    .local v3, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 341
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "confirm_credentials"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 344
    .local v0, "confirmCredentials":Z
    if-nez p3, :cond_2

    .line 345
    if-eqz v0, :cond_1

    .line 348
    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    .line 349
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChooseLockSettingsHelper:Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    const/16 v6, 0x37

    invoke-virtual {v5, v6, v7, v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 352
    .local v2, "launchedConfirmationActivity":Z
    if-nez v2, :cond_0

    .line 353
    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    .line 366
    .end local v2    # "launchedConfirmationActivity":Z
    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mDone:Z

    .line 367
    return-object v4

    .line 356
    :cond_1
    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto :goto_0

    .line 360
    :cond_2
    const-string v5, "chosenGesture"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/gesture/Gesture;

    .line 361
    .local v1, "gesture":Landroid/gesture/Gesture;
    if-eqz v1, :cond_3

    .line 362
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    .line 364
    :cond_3
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->values()[Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    move-result-object v5

    const-string v6, "uiStage"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "chosenGesture"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 442
    .local v0, "previousStage":Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 446
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 447
    iget v1, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->footerMessage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 448
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_0
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    if-ne v1, v2, :cond_2

    .line 454
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :goto_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    iget v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 465
    iget-boolean v1, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->gestureEnabled:Z

    if-eqz v1, :cond_3

    .line 466
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockGestureView;->enableInput()V

    .line 473
    :goto_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    sget-object v2, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Correct:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockGestureView;->setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V

    .line 475
    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$1;->$SwitchMap$com$android$settings$ChooseLockGesture$ChooseLockGestureFragment$Stage:[I

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 496
    :goto_3
    :pswitch_0
    if-eq v0, p1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 499
    :cond_0
    return-void

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterText:Landroid/widget/TextView;

    iget v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    iget v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 468
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockGestureView;->disableInput()V

    goto :goto_2

    .line 477
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    goto :goto_3

    .line 484
    :pswitch_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    goto :goto_3

    .line 487
    :pswitch_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    sget-object v2, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockGestureView;->setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V

    .line 488
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->postClearGestureRunnable()V

    goto :goto_3

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
