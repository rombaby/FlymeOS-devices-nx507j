.class public Lnubia/widget/NubiaDialog;
.super Ljava/lang/Object;
.source "NubiaDialog.java"

# interfaces
.implements Lnubia/widget/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lnubia/widget/NubiaDialog;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public createDialogEnterAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->createNubiaAnimation(I)V

    .line 53
    return-void
.end method

.method public createDialogExitAnimation(Lcom/android/internal/app/AlertController;)V
    .locals 1
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->createNubiaAnimation(I)V

    .line 73
    return-void
.end method

.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleId"    # I
    .param p3, "defaultId"    # I

    .prologue
    .line 62
    const v0, 0x302013b

    return v0
.end method

.method public isResetDialogButtonStyle()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 8
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 30
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 31
    .local v1, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 33
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .local v4, "width":I
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 36
    .local v0, "height":I
    if-ge v4, v0, :cond_0

    move v2, v4

    .line 38
    .local v2, "min":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 39
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    const/4 v6, -0x2

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    const/16 v6, 0x51

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 42
    invoke-virtual {p1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    return-void

    .end local v2    # "min":I
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    move v2, v0

    .line 36
    goto :goto_0
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertController;->setNubiaCanceledOnTouchOutside(Ljava/lang/Boolean;)V

    .line 48
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "actv"    # Landroid/app/Activity;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .prologue
    .line 67
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 68
    return-void
.end method
