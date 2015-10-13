.class public Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;
.super Ljava/lang/Object;
.source "NubiaPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaPhoneWindowManager"


# instance fields
.field private mAntiMisOperationCtrl:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

.field private mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

.field private mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

.field private mContext:Landroid/content/Context;

.field private mDispatchingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDoubleClickScreenCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

.field private mEdgeGestureFuncsCtrl:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

.field private mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

.field private mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

.field private mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

.field private mQueueingHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

.field private mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

.field private mTouchHomeLightCtrl:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

.field private mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private mtouchGestureFuncsCtrl:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    .line 100
    iput-object p2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 102
    iput-object p3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 103
    iput-object p4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 104
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->initCtrls()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCtrls()V
    .locals 5

    .prologue
    .line 109
    new-instance v2, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    .line 111
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPowerAndVolumeScreenshotCtrl:Lcom/android/internal/policy/impl/PowerAndVolumeScreenshotCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v2, v3}, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;-><init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    .line 116
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mBreathingLightCtrl:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-direct {v2}, Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFactoryTestDisableKeys:Lcn/nubia/internal/policy/impl/FactoryTestDisableKeys;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mAntiMisOperationCtrl:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    .line 130
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mAntiMisOperationCtrl:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v2, "1"

    const-string v3, "persist.sys.singlehand"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Lcom/android/internal/policy/impl/SingleUICtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/SingleUICtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    .line 137
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSingleUICtrl:Lcom/android/internal/policy/impl/SingleUICtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    new-instance v2, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mtouchGestureFuncsCtrl:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .line 145
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mtouchGestureFuncsCtrl:Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cn.nubia.wake.gesture"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    new-instance v2, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDoubleClickScreenCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDoubleClickScreenCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDoubleClickScreenCtrl:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cn.nubia.smartface.feature"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 164
    .local v1, "smartFaceEnable":Z
    if-eqz v1, :cond_2

    .line 165
    new-instance v2, Lcn/nubia/internal/policy/impl/SmartFaceManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v2, v3, v4}, Lcn/nubia/internal/policy/impl/SmartFaceManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    new-instance v2, Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    .line 172
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v2, Lcn/nubia/internal/policy/impl/CameraCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v2, v3, v4}, Lcn/nubia/internal/policy/impl/CameraCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mCameraCtrl:Lcn/nubia/internal/policy/impl/CameraCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v2, v3, v4}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mTouchHomeLightCtrl:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    .line 181
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mTouchHomeLightCtrl:Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    .line 186
    .local v0, "edgeTipsDialogHelper":Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v0    # "edgeTipsDialogHelper":Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;
    :cond_3
    return-void
.end method

.method static isFinishKeyBeforDispatching(J)Z
    .locals 2
    .param p0, "result"    # J

    .prologue
    .line 271
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishKeyBeforQueueing(J)Z
    .locals 2
    .param p0, "result"    # J

    .prologue
    .line 249
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isFinishRotationForOrientationLw(I)Z
    .locals 1
    .param p0, "result"    # I

    .prologue
    .line 285
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private observeSetting()V
    .locals 4

    .prologue
    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 193
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/ISettingListener;

    .line 194
    .local v2, "listener":Lcom/android/internal/policy/impl/ISettingListener;
    new-instance v3, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;Landroid/os/Handler;Lcom/android/internal/policy/impl/ISettingListener;)V

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager$SettingsObserver;->observe()V

    goto :goto_0

    .line 196
    .end local v2    # "listener":Lcom/android/internal/policy/impl/ISettingListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 6
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .prologue
    const/4 v5, 0x0

    .line 318
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x3040014

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    move-object v2, v0

    .line 322
    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 323
    .local v2, "set":Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/android/internal/policy/impl/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v1, v3, v5}, Lcom/android/internal/policy/impl/LogDecelerateInterpolator;-><init>(II)V

    .line 325
    .local v1, "logDecelerateInterpolator":Lcom/android/internal/policy/impl/LogDecelerateInterpolator;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 326
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 327
    return-object v2
.end method

.method init()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->observeSetting()V

    .line 200
    return-void
.end method

.method public interceptFreeSnapshot()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mFreeSnapshotCtrl:Lcom/android/internal/policy/impl/FreeSnapshotCtrl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FreeSnapshotCtrl;->doFreeSnapshot()Z

    move-result v0

    return v0
.end method

.method interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 255
    const-wide/high16 v4, -0x8000000000000000L

    .line 256
    .local v4, "result":J
    const/4 v2, 0x0

    .line 257
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mDispatchingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;

    .line 258
    .local v0, "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v4

    .line 260
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 261
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercept Key Before Dispatching result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v4

    .line 267
    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_1
    return-wide v6

    .line 265
    .end local v6    # "result":J
    .restart local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    .restart local v4    # "result":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 266
    goto :goto_0

    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
    :cond_1
    move-wide v6, v4

    .line 267
    .end local v4    # "result":J
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 233
    const-wide/high16 v4, -0x8000000000000000L

    .line 234
    .local v4, "result":J
    const/4 v2, 0x0

    .line 235
    .local v2, "position":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mQueueingHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;

    .line 236
    .local v0, "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J

    move-result-wide v4

    .line 238
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 239
    const-string v3, "NubiaPhoneWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intercept Key Before Queueing result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v6, v4

    .line 245
    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    .end local v4    # "result":J
    .local v6, "result":J
    :goto_1
    return-wide v6

    .line 243
    .end local v6    # "result":J
    .restart local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    .restart local v4    # "result":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 244
    goto :goto_0

    .end local v0    # "handler":Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;
    :cond_1
    move-wide v6, v4

    .line 245
    .end local v4    # "result":J
    .restart local v6    # "result":J
    goto :goto_1
.end method

.method playSoundEffect(Landroid/view/KeyEvent;IZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I
    .param p3, "keyguardOn"    # Z

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/16 v1, 0x54

    if-ne p2, v1, :cond_1

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 298
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 302
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public resetAnimation(ZZ)Z
    .locals 1
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .prologue
    const/4 v0, 0x0

    .line 307
    if-eqz p2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 309
    :cond_1
    if-eqz p1, :cond_0

    .line 310
    const/4 v0, 0x1

    goto :goto_0
.end method

.method rotationForOrientationLw(I)I
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 276
    const/4 v0, -0x1

    .line 277
    .local v0, "currentOrientation":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->needRotationScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 281
    :cond_0
    return v0
.end method

.method systemBooted()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mAntiMisOperationCtrl:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mAntiMisOperationCtrl:Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/AntiMisOperationCtrl;->initScreenSaverService()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSmartFaceCtrl:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->startSmartFaceService()V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mGarbageCleanCtrl:Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->startGarbageCleanService()V

    .line 214
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    iget-object v1, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mEdgeGestureFuncsCtrl:Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;

    .line 339
    :cond_0
    return-void
.end method

.method updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clazzName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "sys.perf.activate"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mVolleyGestureCtrl:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->updatePackageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method updateSettings()V
    .locals 3

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 223
    :cond_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/NubiaPhoneWindowManager;->mSettingListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/ISettingListener;

    .line 221
    .local v0, "handler":Lcom/android/internal/policy/impl/ISettingListener;
    invoke-interface {v0}, Lcom/android/internal/policy/impl/ISettingListener;->updateSettings()V

    goto :goto_0
.end method
