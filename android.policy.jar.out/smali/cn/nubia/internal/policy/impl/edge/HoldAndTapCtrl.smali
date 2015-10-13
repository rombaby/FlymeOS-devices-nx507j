.class public Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "HoldAndTapCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HoldAndTapCtrl"


# instance fields
.field private final TAP_SWITCH_OFF:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 16
    const-string v0, "off"

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->TAP_SWITCH_OFF:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeGestureListener;)V

    .line 27
    return-void
.end method

.method private containsCurrentApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apps"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "currentApp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 48
    .end local v0    # "currentApp":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private showTapGestureGuideIfNeed()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    .line 68
    return-void
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 3

    .prologue
    .line 31
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 32
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "nubia_edge_hold_tap"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "enable":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->containsCurrentApp(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method handleEdgeGesture(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 53
    packed-switch p1, :pswitch_data_0

    .line 61
    const-string v0, "HoldAndTapCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not listen this type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;->showTapGestureGuideIfNeed()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
