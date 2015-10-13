.class Lcom/android/internal/telephony/gsm/IccFileHandlerProxy;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "IccFileHandlerProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IccFile3G"


# instance fields
.field private mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    .line 16
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/IccFileHandlerProxy;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 17
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/IccFileHandlerProxy;->mIccFileHandler:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEfPathToProxy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string v0, "IccFile3G"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "IccFile3G"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
