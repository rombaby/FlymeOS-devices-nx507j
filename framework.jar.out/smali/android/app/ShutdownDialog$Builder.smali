.class public Landroid/app/ShutdownDialog$Builder;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/android/internal/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const v0, 0x30e000e

    invoke-direct {p0, p1, v0}, Landroid/app/ShutdownDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x30e000e

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    .line 275
    iput p2, p0, Landroid/app/ShutdownDialog$Builder;->mTheme:I

    .line 276
    return-void
.end method


# virtual methods
.method public create()Landroid/app/ShutdownDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 534
    new-instance v0, Landroid/app/ShutdownDialog;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, "dialog":Landroid/app/ShutdownDialog;
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 543
    const/4 v1, -0x1

    iget-object v2, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    # invokes: Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 546
    :cond_2
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 547
    const/4 v1, -0x2

    iget-object v2, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    # invokes: Landroid/app/ShutdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ShutdownDialog;->access$500(Landroid/app/ShutdownDialog;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 552
    :cond_3
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 557
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setView(Landroid/view/View;)V

    .line 566
    :cond_4
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 567
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_5

    .line 568
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setCanceledOnTouchOutside(Z)V

    .line 570
    :cond_5
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 571
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 572
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_6

    .line 573
    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ShutdownDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 575
    :cond_6
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 415
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 416
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 323
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 352
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 353
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 514
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 515
    return-object p0
.end method

.method public setMessage(I)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 333
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 343
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 390
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 391
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 392
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 403
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 404
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 405
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 433
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 434
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 443
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 444
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 453
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 454
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 364
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 365
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 366
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 378
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 379
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 522
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 523
    return-object p0
.end method

.method public setTitle(I)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 296
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 297
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/ShutdownDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 306
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 307
    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 468
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 469
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Landroid/app/ShutdownDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 496
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 497
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 498
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 499
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 500
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 501
    iget-object v0, p0, Landroid/app/ShutdownDialog$Builder;->P:Lcom/android/internal/app/AlertController$AlertParams;

    iput p5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 502
    return-object p0
.end method

.method public show()Landroid/app/ShutdownDialog;
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/app/ShutdownDialog$Builder;->create()Landroid/app/ShutdownDialog;

    move-result-object v0

    .line 584
    .local v0, "dialog":Landroid/app/ShutdownDialog;
    invoke-virtual {v0}, Landroid/app/ShutdownDialog;->show()V

    .line 585
    return-object v0
.end method
