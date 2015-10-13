.class public Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;
.super Ljava/lang/Object;
.source "AppOptimizeMessageDialog.java"


# instance fields
.field mAppOptimizeDialog:Landroid/app/AlertDialog;

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field mContext:Landroid/content/Context;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mProgress_text:Landroid/widget/TextView;

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    .line 17
    iput-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 18
    iput-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgress_text:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 20
    iput-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mView:Landroid/view/View;

    .line 23
    iput-object p1, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public createAppOptDialog(Ljava/lang/CharSequence;IIZ)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "cur"    # I
    .param p3, "total"    # I
    .param p4, "always"    # Z

    .prologue
    .line 27
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 28
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mContext:Landroid/content/Context;

    const v4, 0x30e000a

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 29
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x1040496

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 30
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v2, 0x3030000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mView:Landroid/view/View;

    .line 32
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 33
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mView:Landroid/view/View;

    const v3, 0x30d000c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgress_text:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mView:Landroid/view/View;

    const v3, 0x30d000d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    .line 36
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 37
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 38
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 39
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 41
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 42
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 44
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 45
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 47
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgress_text:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgress_text:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 50
    iget-object v2, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    :cond_1
    return-void
.end method

.method public hideAppOptDialog()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/AppOptimizeMessageDialog;->mAppOptimizeDialog:Landroid/app/AlertDialog;

    .line 59
    :cond_0
    return-void
.end method
