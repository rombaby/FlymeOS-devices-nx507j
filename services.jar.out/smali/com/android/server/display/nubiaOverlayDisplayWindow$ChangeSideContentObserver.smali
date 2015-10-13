.class Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;
.super Landroid/database/ContentObserver;
.source "nubiaOverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeSideContentObserver"
.end annotation


# instance fields
.field private mLastMode:I

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    .line 790
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->mLastMode:I

    .line 791
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 794
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 795
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 798
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->mLastMode:I

    .line 800
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 809
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_ui_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 811
    .local v0, "currentMode":I
    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->mLastMode:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->mLastMode:I

    if-ne v1, v0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSide()V
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 815
    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->mLastMode:I

    goto :goto_0
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 804
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 805
    return-void
.end method
