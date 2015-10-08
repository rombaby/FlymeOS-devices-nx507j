.class public Lcom/android/internal/widget/LockGestureView;
.super Landroid/gesture/GestureOverlayView;
.source "LockGestureView.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;
.implements Landroid/gesture/GestureOverlayView$OnGesturingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockGestureView$1;,
        Lcom/android/internal/widget/LockGestureView$DisplayMode;,
        Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;
    }
.end annotation


# static fields
.field private static final CORRECT_COLOR:I = -0x333334

.field private static final WRONG_COLOR:I = -0x10000


# instance fields
.field private mGestureDisplayMode:Lcom/android/internal/widget/LockGestureView$DisplayMode;

.field private mInStealthMode:Z

.field private mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockGestureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v0, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Correct:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mGestureDisplayMode:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/widget/LockGestureView;->mInStealthMode:Z

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockGestureView;->setGestureVisible(Z)V

    .line 94
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/LockGestureView;->addOnGesturingListener(Landroid/gesture/GestureOverlayView$OnGesturingListener;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/android/internal/widget/LockGestureView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 96
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockGestureView;->setGestureColor(I)V

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/widget/LockGestureView;->mClearPerformedGesture:Z

    .line 98
    return-void
.end method

.method private notifyGestureCleared()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;->onGestureCleared()V

    .line 186
    :cond_0
    return-void
.end method

.method private notifyGestureDetected(Landroid/gesture/Gesture;)V
    .locals 1
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;->onGestureDetected(Landroid/gesture/Gesture;)V

    .line 191
    :cond_0
    return-void
.end method

.method private notifyGestureStart()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;->onGestureStart()V

    .line 181
    :cond_0
    return-void
.end method

.method private resetGesture()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Correct:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockGestureView;->mGestureDisplayMode:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockGestureView;->clear(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/widget/LockGestureView;->invalidate()V

    .line 167
    return-void
.end method


# virtual methods
.method public clearGesture()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/internal/widget/LockGestureView;->resetGesture()V

    .line 158
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockGestureView;->mInputEnabled:Z

    .line 144
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockGestureView;->mInputEnabled:Z

    .line 151
    return-void
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/internal/widget/LockGestureView;->mInStealthMode:Z

    return v0
.end method

.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 0
    .param p1, "gestureOverlayView"    # Landroid/gesture/GestureOverlayView;
    .param p2, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockGestureView;->notifyGestureDetected(Landroid/gesture/Gesture;)V

    .line 38
    return-void
.end method

.method public onGesturingEnded(Landroid/gesture/GestureOverlayView;)V
    .locals 0
    .param p1, "gestureOverlayView"    # Landroid/gesture/GestureOverlayView;

    .prologue
    .line 47
    return-void
.end method

.method public onGesturingStarted(Landroid/gesture/GestureOverlayView;)V
    .locals 0
    .param p1, "gestureOverlayView"    # Landroid/gesture/GestureOverlayView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/widget/LockGestureView;->notifyGestureStart()V

    .line 43
    return-void
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V
    .locals 2
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockGestureView$DisplayMode;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/widget/LockGestureView;->mGestureDisplayMode:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    .line 126
    sget-object v0, Lcom/android/internal/widget/LockGestureView$1;->$SwitchMap$com$android$internal$widget$LockGestureView$DisplayMode:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/LockGestureView$DisplayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockGestureView;->invalidate()V

    .line 136
    return-void

    .line 128
    :pswitch_0
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockGestureView;->setGestureColor(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    const/high16 v0, -0x10000

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockGestureView;->setGestureColor(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInStealthMode(Z)V
    .locals 1
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/internal/widget/LockGestureView;->mInStealthMode:Z

    .line 115
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockGestureView;->setGestureVisible(Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnGestureListener(Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;)V
    .locals 0
    .param p1, "onGestureListener"    # Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/widget/LockGestureView;->mOnGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    .line 176
    return-void
.end method
