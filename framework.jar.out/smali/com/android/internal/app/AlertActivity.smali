.class public abstract Lcom/android/internal/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mNubiaDialog:Lnubia/widget/IDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 68
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 109
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-interface {v0, v1}, Lnubia/widget/IDialog;->createDialogExitAnimation(Lcom/android/internal/app/AlertController;)V

    .line 92
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 80
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lnubia/widget/IDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    .line 60
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 62
    invoke-static {p0}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnubia/widget/NubiaDialog;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    .line 64
    return-void

    .line 62
    :cond_0
    new-instance v0, Lnubia/widget/ProtoDialog;

    invoke-direct {v0, p0}, Lnubia/widget/ProtoDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 73
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-interface {v0, v1}, Lnubia/widget/IDialog;->createDialogEnterAnimation(Lcom/android/internal/app/AlertController;)V

    .line 74
    return-void
.end method

.method public realFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    invoke-interface {v0, p0, v1, v1}, Lnubia/widget/IDialog;->setExitAnimation(Landroid/app/Activity;II)V

    .line 100
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 3
    .param p1, "cancel"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mNubiaDialog:Lnubia/widget/IDialog;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnubia/widget/IDialog;->setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V

    .line 87
    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 121
    return-void
.end method
