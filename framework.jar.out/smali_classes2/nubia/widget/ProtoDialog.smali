.class public Lnubia/widget/ProtoDialog;
.super Ljava/lang/Object;
.source "ProtoDialog.java"

# interfaces
.implements Lnubia/widget/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnubia/widget/ProtoDialog;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public createDialogEnterAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 34
    return-void
.end method

.method public createDialogExitAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/android/internal/app/AlertController;->dissmissDialog()V

    .line 54
    return-void
.end method

.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleId"    # I
    .param p3, "defaultId"    # I

    .prologue
    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public isResetDialogButtonStyle()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 24
    return-void
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 29
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "actv"    # Landroid/app/Activity;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .prologue
    .line 49
    return-void
.end method
