.class Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeper;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;-><init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    return-void
.end method

.method private hide(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-virtual {v1, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 185
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 200
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$400(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 202
    .local v1, "service":Landroid/os/storage/IMountService;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 205
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    const-string v3, "Error while decrypting..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$500(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$500(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$600(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a0c1f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 219
    const v1, 0x7f110069

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 220
    const v1, 0x7f11006a

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 221
    const v1, 0x7f110058

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 222
    const v1, 0x7f110078

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 223
    const v1, 0x7f110068

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 224
    const v1, 0x7f11006b

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->hide(I)V

    .line 239
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 233
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    const v2, 0x7f040035

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->setContentView(I)V

    .line 234
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    const/4 v2, 0x1

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->showFactoryReset(Z)V
    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$700(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Z)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V
    invoke-static {v1, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 192
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$200(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$DecryptTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->beginAttempt()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$300(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    .line 196
    return-void
.end method
