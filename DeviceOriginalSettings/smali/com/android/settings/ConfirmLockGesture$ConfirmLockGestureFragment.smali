.class public Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockGestureFragment"
.end annotation


# instance fields
.field private mClearGestureRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockGestureView:Lcom/android/internal/widget/LockGestureView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 235
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    .line 252
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mConfirmExistingLockGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockGestureView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;
    .param p1, "x1"    # J

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 286
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;->LockedOut:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 288
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$3;-><init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;JJ)V

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 307
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockGestureView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 246
    return-void
.end method

.method private updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;

    .prologue
    const/4 v2, 0x1

    .line 190
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$1;->$SwitchMap$com$android$settings$ConfirmLockGesture$Stage:[I

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockGestureView;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->enableInput()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0486

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0487

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    sget-object v1, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V

    .line 219
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockGestureView;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->enableInput()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0488

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0489

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    .line 226
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    const v3, 0x7f040024

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f11004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f110050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockGestureView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    .line 125
    const v3, 0x7f110051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterTextView:Landroid/widget/TextView;

    .line 129
    const v3, 0x7f11004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 131
    .local v1, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 135
    const-string v3, "com.android.settings.ConfirmLockGesture.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 136
    const-string v3, "com.android.settings.ConfirmLockGesture.footer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 137
    const-string v3, "com.android.settings.ConfirmLockGesture.header_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 138
    const-string v3, "com.android.settings.ConfirmLockGesture.footer_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mConfirmExistingLockGestureListener:Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockGestureView;->setOnGestureListener(Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;)V

    .line 142
    sget-object v3, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;->NeedToUnlock:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V

    .line 144
    if-eqz p3, :cond_2

    .line 145
    const-string v3, "num_wrong_attempts"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I

    .line 155
    :cond_1
    :goto_0
    return-object v2

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedGestureExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 171
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 178
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 179
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->handleAttemptLockout(J)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockGestureView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    const/4 v2, 0x0

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I

    .line 185
    sget-object v2, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;->NeedToUnlock:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    return-void
.end method
