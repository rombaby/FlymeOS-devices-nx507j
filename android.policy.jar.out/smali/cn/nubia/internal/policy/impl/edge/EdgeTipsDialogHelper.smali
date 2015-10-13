.class public Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;
.super Ljava/lang/Object;
.source "EdgeTipsDialogHelper.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
.implements Lcom/android/internal/policy/impl/ISettingListener;


# static fields
.field private static sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgeTipsDialog:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

.field private mTipsBackForth:I

.field private mTipsBothSide:I

.field private mTipsHandHoldClick:I

.field private mTipsHandHoldLeave:I

.field private mTipsHandsHold:I

.field private mTipsLeftSide:I

.field private mTipsRightSide:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

    invoke-direct {v0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mEdgeTipsDialog:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->sInstance:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getstateByType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 113
    const/4 v0, -0x1

    .line 114
    .local v0, "state":I
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    return v0

    .line 116
    :pswitch_0
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsLeftSide:I

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsRightSide:I

    .line 120
    goto :goto_0

    .line 122
    :pswitch_2
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsBackForth:I

    .line 123
    goto :goto_0

    .line 125
    :pswitch_3
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsBothSide:I

    .line 126
    goto :goto_0

    .line 128
    :pswitch_4
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsHandsHold:I

    .line 129
    goto :goto_0

    .line 131
    :pswitch_5
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsHandHoldLeave:I

    .line 132
    goto :goto_0

    .line 134
    :pswitch_6
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsHandHoldClick:I

    .line 135
    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isShowDialog(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getstateByType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mEdgeTipsDialog:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->dismiss()I

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x4

    .line 49
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->dismiss()I

    move-result v0

    .line 53
    .local v0, "type":I
    if-lez v0, :cond_2

    .line 54
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 55
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mEdgeTipsDialog:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

    invoke-virtual {v1, v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->enableGestrue(I)V

    .line 57
    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .end local v0    # "type":I
    :goto_0
    return-wide v2

    :cond_2
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 66
    const-string v0, "left_side_slide"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    const-string v0, "right_side_slide"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 72
    const-string v0, "side_slide_back_and_forth"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 75
    const-string v0, "both_sides_slide"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    const-string v0, "hands_hold_both_sides"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    const-string v0, "hand_hold_and_leave"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    const-string v0, "hand_hold_and_click"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 87
    return-void
.end method

.method public showTipsDialog(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->isShowDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mEdgeTipsDialog:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->setGestureType(I)V

    .line 145
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mEdgeTipsDialog:Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->show()V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "left_side_slide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsLeftSide:I

    .line 94
    const-string v1, "right_side_slide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsRightSide:I

    .line 96
    const-string v1, "side_slide_back_and_forth"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsBackForth:I

    .line 98
    const-string v1, "both_sides_slide"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsBothSide:I

    .line 100
    const-string v1, "hands_hold_both_sides"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsHandsHold:I

    .line 102
    const-string v1, "hand_hold_and_leave"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsHandHoldLeave:I

    .line 104
    const-string v1, "hand_hold_and_click"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->mTipsHandHoldClick:I

    .line 106
    return-void
.end method
