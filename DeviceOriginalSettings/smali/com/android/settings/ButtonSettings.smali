.class public Lcom/flyme/deviceoriginalsettings/ButtonSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "ButtonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mCameraLaunch:Landroid/preference/SwitchPreference;

.field private mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

.field private mCameraWakeScreen:Landroid/preference/SwitchPreference;

.field private mDisableNavigationKeys:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHomeAnswerCall:Landroid/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mNavButtonsHeight:Landroid/preference/ListPreference;

.field private mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

.field private mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

.field private mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

.field private mPowerEndCall:Landroid/preference/SwitchPreference;

.field private mSwapVolumeButtons:Landroid/preference/SwitchPreference;

.field private mVolumeAnswerCall:Landroid/preference/SwitchPreference;

.field private mVolumeControlRingStream:Landroid/preference/SwitchPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;

.field private mVolumeMusicControls:Landroid/preference/SwitchPreference;

.field private mVolumeWakeScreen:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ButtonSettings$2;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings$2;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/ButtonSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ButtonSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ButtonSettings;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPreferencesToRemove(Lcom/flyme/deviceoriginalsettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferencesToRemove(Lcom/flyme/deviceoriginalsettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;
    .locals 35
    .param p0, "settings"    # Lcom/flyme/deviceoriginalsettings/ButtonSettings;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flyme/deviceoriginalsettings/ButtonSettings;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v24, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 262
    .local v23, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 264
    .local v22, "res":Landroid/content/res/Resources;
    const v33, 0x10e0054

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 266
    .local v5, "deviceKeys":I
    const v33, 0x10e0055

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 269
    .local v6, "deviceWakeKeys":I
    const/16 v33, 0x1a

    invoke-static/range {v33 .. v33}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v18

    .line 270
    .local v18, "hasPowerKey":Z
    and-int/lit8 v33, v5, 0x1

    if-eqz v33, :cond_19

    const/4 v15, 0x1

    .line 271
    .local v15, "hasHomeKey":Z
    :goto_0
    and-int/lit8 v33, v5, 0x2

    if-eqz v33, :cond_1a

    const/4 v13, 0x1

    .line 272
    .local v13, "hasBackKey":Z
    :goto_1
    and-int/lit8 v33, v5, 0x4

    if-eqz v33, :cond_1b

    const/16 v16, 0x1

    .line 273
    .local v16, "hasMenuKey":Z
    :goto_2
    and-int/lit8 v33, v5, 0x8

    if-eqz v33, :cond_1c

    const/4 v12, 0x1

    .line 274
    .local v12, "hasAssistKey":Z
    :goto_3
    and-int/lit8 v33, v5, 0x10

    if-eqz v33, :cond_1d

    const/4 v11, 0x1

    .line 275
    .local v11, "hasAppSwitchKey":Z
    :goto_4
    and-int/lit8 v33, v5, 0x20

    if-eqz v33, :cond_1e

    const/4 v14, 0x1

    .line 277
    .local v14, "hasCameraKey":Z
    :goto_5
    and-int/lit8 v33, v6, 0x1

    if-eqz v33, :cond_1f

    const/16 v29, 0x1

    .line 278
    .local v29, "showHomeWake":Z
    :goto_6
    and-int/lit8 v33, v6, 0x2

    if-eqz v33, :cond_20

    const/16 v27, 0x1

    .line 279
    .local v27, "showBackWake":Z
    :goto_7
    and-int/lit8 v33, v6, 0x4

    if-eqz v33, :cond_21

    const/16 v30, 0x1

    .line 280
    .local v30, "showMenuWake":Z
    :goto_8
    and-int/lit8 v33, v6, 0x8

    if-eqz v33, :cond_22

    const/16 v26, 0x1

    .line 281
    .local v26, "showAssistWake":Z
    :goto_9
    and-int/lit8 v33, v6, 0x10

    if-eqz v33, :cond_23

    const/16 v25, 0x1

    .line 282
    .local v25, "showAppSwitchWake":Z
    :goto_a
    and-int/lit8 v33, v6, 0x20

    if-eqz v33, :cond_24

    const/16 v28, 0x1

    .line 283
    .local v28, "showCameraWake":Z
    :goto_b
    and-int/lit8 v33, v6, 0x40

    if-eqz v33, :cond_25

    const/16 v31, 0x1

    .line 285
    .local v31, "showVolumeWake":Z
    :goto_c
    invoke-static/range {p1 .. p1}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v10

    .line 289
    .local v10, "hardware":Lmokee/hardware/MKHardwareManager;
    const/16 v20, 0x0

    .line 290
    .local v20, "needsNavigationBar":Z
    const/16 v33, 0x20

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v33

    if-eqz v33, :cond_27

    .line 292
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v32

    .line 293
    .local v32, "wm":Landroid/view/IWindowManager;
    invoke-interface/range {v32 .. v32}, Landroid/view/IWindowManager;->needsNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    .line 297
    .end local v32    # "wm":Landroid/view/IWindowManager;
    :goto_d
    if-eqz v20, :cond_26

    .line 298
    const-string v33, "disable_nav_keys"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    :goto_e
    if-eqz v18, :cond_28

    .line 314
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 315
    const-string v33, "power_end_call"

    const-string v34, "power_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    if-eqz p0, :cond_1

    .line 317
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 324
    :cond_1
    :goto_f
    if-eqz v15, :cond_29

    .line 325
    if-nez v29, :cond_2

    .line 326
    const-string v33, "home_wake_screen"

    const-string v34, "home_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 330
    if-eqz p0, :cond_3

    .line 331
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 333
    :cond_3
    const-string v33, "home_answer_call"

    const-string v34, "home_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_4
    const v33, 0x10e0050

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 338
    .local v4, "defaultLongPressAction":I
    if-ltz v4, :cond_5

    const/16 v33, 0x8

    move/from16 v0, v33

    if-le v4, v0, :cond_6

    .line 340
    :cond_5
    const/4 v4, 0x0

    .line 343
    :cond_6
    const v33, 0x10e0051

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 345
    .local v3, "defaultDoubleTapAction":I
    if-ltz v3, :cond_7

    const/16 v33, 0x8

    move/from16 v0, v33

    if-le v3, v0, :cond_8

    .line 347
    :cond_7
    const/4 v3, 0x0

    .line 350
    :cond_8
    if-eqz p0, :cond_9

    .line 351
    const-string v33, "key_home_long_press_action"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 354
    .local v19, "longPressAction":I
    const-string v33, "hardware_keys_home_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 357
    const-string v33, "key_home_double_tap_action"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 360
    .local v7, "doubleTapAction":I
    const-string v33, "hardware_keys_home_double_tap"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v7}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    .line 368
    .end local v3    # "defaultDoubleTapAction":I
    .end local v4    # "defaultLongPressAction":I
    .end local v7    # "doubleTapAction":I
    .end local v19    # "longPressAction":I
    :cond_9
    :goto_10
    if-eqz v13, :cond_2a

    .line 369
    if-nez v27, :cond_a

    .line 370
    const-string v33, "back_wake_screen"

    const-string v34, "back_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v33, "back_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_a
    :goto_11
    if-eqz v16, :cond_2c

    .line 378
    if-nez v30, :cond_b

    .line 379
    const-string v33, "menu_wake_screen"

    const-string v34, "menu_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_b
    if-eqz p0, :cond_c

    .line 383
    const-string v33, "key_menu_action"

    const/16 v34, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 385
    .local v21, "pressAction":I
    const-string v33, "hardware_keys_menu_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 388
    const-string v34, "key_menu_long_press_action"

    if-eqz v12, :cond_2b

    const/16 v33, 0x0

    :goto_12
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 391
    .restart local v19    # "longPressAction":I
    const-string v33, "hardware_keys_menu_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 398
    .end local v19    # "longPressAction":I
    .end local v21    # "pressAction":I
    :cond_c
    :goto_13
    if-eqz v12, :cond_2d

    .line 399
    if-nez v26, :cond_d

    .line 400
    const-string v33, "assist_wake_screen"

    const-string v34, "assist_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_d
    if-eqz p0, :cond_e

    .line 404
    const-string v33, "key_assist_action"

    const/16 v34, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 406
    .restart local v21    # "pressAction":I
    const-string v33, "hardware_keys_assist_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 409
    const-string v33, "key_assist_long_press_action"

    const/16 v34, 0x4

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 411
    .restart local v19    # "longPressAction":I
    const-string v33, "hardware_keys_assist_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 418
    .end local v19    # "longPressAction":I
    .end local v21    # "pressAction":I
    :cond_e
    :goto_14
    if-eqz v11, :cond_2e

    .line 419
    if-nez v25, :cond_f

    .line 420
    const-string v33, "app_switch_wake_screen"

    const-string v34, "app_switch_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_f
    if-eqz p0, :cond_10

    .line 424
    const-string v33, "key_app_switch_action"

    const/16 v34, 0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 426
    .restart local v21    # "pressAction":I
    const-string v33, "hardware_keys_app_switch_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 429
    const-string v33, "key_app_switch_long_press_action"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 431
    .restart local v19    # "longPressAction":I
    const-string v33, "hardware_keys_app_switch_long_press"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 438
    .end local v19    # "longPressAction":I
    .end local v21    # "pressAction":I
    :cond_10
    :goto_15
    if-eqz v14, :cond_2f

    .line 439
    if-nez v28, :cond_11

    .line 440
    const-string v33, "camera_wake_screen"

    const-string v34, "camera_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_11
    const v33, 0x112004b

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 444
    const-string v33, "camera_sleep_on_release"

    const-string v34, "camera_key"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_12
    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v33

    if-eqz v33, :cond_30

    .line 451
    if-nez v31, :cond_13

    .line 452
    const-string v33, "volume_wake_screen"

    const-string v34, "volume_keys"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_13
    :goto_17
    :try_start_1
    const-string v33, "dev_force_show_navbar"

    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_31

    const/4 v9, 0x1

    .line 463
    .local v9, "forceNavbar":Z
    :goto_18
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v33

    if-nez v33, :cond_14

    if-eqz v9, :cond_32

    :cond_14
    const/16 v17, 0x1

    .line 466
    .local v17, "hasNavBar":Z
    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/cm/ScreenType;->isPhone(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_15

    .line 467
    const-string v33, "navigation_bar_left"

    const-string v34, "navigation_bar_category"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_15
    if-nez v17, :cond_17

    if-nez v20, :cond_16

    const/16 v33, 0x20

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v33

    if-nez v33, :cond_17

    .line 472
    :cond_16
    const-string v33, "navigation_bar_category"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 478
    .end local v9    # "forceNavbar":Z
    .end local v17    # "hasNavBar":Z
    :cond_17
    :goto_1a
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_18

    .line 480
    const-string v33, "button_backlight"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_18
    return-object v24

    .line 270
    .end local v10    # "hardware":Lmokee/hardware/MKHardwareManager;
    .end local v11    # "hasAppSwitchKey":Z
    .end local v12    # "hasAssistKey":Z
    .end local v13    # "hasBackKey":Z
    .end local v14    # "hasCameraKey":Z
    .end local v15    # "hasHomeKey":Z
    .end local v16    # "hasMenuKey":Z
    .end local v20    # "needsNavigationBar":Z
    .end local v25    # "showAppSwitchWake":Z
    .end local v26    # "showAssistWake":Z
    .end local v27    # "showBackWake":Z
    .end local v28    # "showCameraWake":Z
    .end local v29    # "showHomeWake":Z
    .end local v30    # "showMenuWake":Z
    .end local v31    # "showVolumeWake":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 271
    .restart local v15    # "hasHomeKey":Z
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 272
    .restart local v13    # "hasBackKey":Z
    :cond_1b
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 273
    .restart local v16    # "hasMenuKey":Z
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 274
    .restart local v12    # "hasAssistKey":Z
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 275
    .restart local v11    # "hasAppSwitchKey":Z
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 277
    .restart local v14    # "hasCameraKey":Z
    :cond_1f
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 278
    .restart local v29    # "showHomeWake":Z
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_7

    .line 279
    .restart local v27    # "showBackWake":Z
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 280
    .restart local v30    # "showMenuWake":Z
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 281
    .restart local v26    # "showAssistWake":Z
    :cond_23
    const/16 v25, 0x0

    goto/16 :goto_a

    .line 282
    .restart local v25    # "showAppSwitchWake":Z
    :cond_24
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 283
    .restart local v28    # "showCameraWake":Z
    :cond_25
    const/16 v31, 0x0

    goto/16 :goto_c

    .line 301
    .restart local v10    # "hardware":Lmokee/hardware/MKHardwareManager;
    .restart local v20    # "needsNavigationBar":Z
    .restart local v31    # "showVolumeWake":Z
    :cond_26
    if-eqz p0, :cond_0

    .line 302
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    goto/16 :goto_e

    .line 310
    :cond_27
    const-string v33, "disable_nav_keys"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 321
    :cond_28
    const-string v33, "power_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 365
    :cond_29
    const-string v33, "home_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 374
    :cond_2a
    const-string v33, "back_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 388
    .restart local v21    # "pressAction":I
    :cond_2b
    const/16 v33, 0x3

    goto/16 :goto_12

    .line 395
    .end local v21    # "pressAction":I
    :cond_2c
    const-string v33, "menu_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 415
    :cond_2d
    const-string v33, "assist_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 435
    :cond_2e
    const-string v33, "app_switch_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 447
    :cond_2f
    const-string v33, "camera_key"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 455
    :cond_30
    const-string v33, "volume_keys"

    const/16 v34, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 461
    :cond_31
    const/4 v9, 0x0

    goto/16 :goto_18

    .line 463
    .restart local v9    # "forceNavbar":Z
    :cond_32
    const/16 v17, 0x0

    goto/16 :goto_19

    .line 474
    .end local v9    # "forceNavbar":Z
    :catch_0
    move-exception v8

    .line 475
    .local v8, "e":Landroid/os/RemoteException;
    const-string v33, "SystemSettings"

    const-string v34, "Error getting navigation bar status"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 294
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v33

    goto/16 :goto_d
.end method

.method private handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/ListPreference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .prologue
    .line 597
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 598
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, "index":I
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 600
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, p3, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    return-void
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ring_home_button_behavior"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 803
    return-void

    .line 799
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 796
    return-void

    .line 792
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleVolumeButtonAnswerCallPreferenceClick()V
    .locals 3

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ring_volume_button_behavior"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    return-void

    .line 785
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 524
    .local v0, "list":Landroid/preference/ListPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 528
    .end local v0    # "list":Landroid/preference/ListPreference;
    :goto_0
    return-object v0

    .line 525
    .restart local v0    # "list":Landroid/preference/ListPreference;
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 533
    .local v9, "list":Landroid/preference/ListPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "recents_long_press_activity"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "componentString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 539
    .local v12, "targetComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 540
    const v14, 0x7f0a00f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 548
    .local v10, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.RECENTS_LONG_PRESS"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v14, 0x10000

    invoke-virtual {v10, v8, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 551
    .local v11, "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_1

    .line 553
    const v14, 0x7f0a00f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "recents_long_press_activity"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 593
    :goto_1
    return-object v9

    .line 542
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    goto :goto_0

    .line 560
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "recentsActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/CharSequence;

    .line 561
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    new-array v13, v14, [Ljava/lang/CharSequence;

    .line 563
    .local v13, "values":[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    const v15, 0x7f0a00f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 564
    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    .line 565
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 566
    const/4 v5, 0x1

    .line 567
    .local v5, "i":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 571
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v3, v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_3
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .local v4, "entryComponent":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    .line 582
    if-eqz v12, :cond_2

    .line 583
    invoke-virtual {v4, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 585
    aget-object v14, v3, v5

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 586
    aget-object v14, v13, v5

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 589
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 590
    goto :goto_2

    .line 572
    .end local v4    # "entryComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "SystemSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error package not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v14, v3, v5

    goto :goto_3

    .line 591
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v9, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 592
    invoke-virtual {v9, v13}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public static restoreKeyDisabler(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 735
    invoke-static {p0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 736
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dev_force_show_navbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {p0, v1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateDisableNavkeysCategories(Z)V
    .locals 10
    .param p1, "navbarEnabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 693
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 696
    .local v6, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v7, "home_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 698
    .local v4, "homeCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "back_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 700
    .local v2, "backCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "menu_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 702
    .local v5, "menuCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "assist_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 704
    .local v1, "assistCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "app_switch_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 706
    .local v0, "appSwitchCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "button_backlight"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .line 711
    .local v3, "backlight":Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;
    if-eqz v3, :cond_0

    .line 712
    if-nez p1, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v3, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setEnabled(Z)V

    .line 713
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 717
    :cond_0
    if-eqz v4, :cond_1

    .line 718
    if-nez p1, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 720
    :cond_1
    if-eqz v2, :cond_2

    .line 721
    if-nez p1, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 723
    :cond_2
    if-eqz v5, :cond_3

    .line 724
    if-nez p1, :cond_9

    move v7, v8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 726
    :cond_3
    if-eqz v1, :cond_4

    .line 727
    if-nez p1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 729
    :cond_4
    if-eqz v0, :cond_5

    .line 730
    if-nez p1, :cond_b

    :goto_5
    invoke-virtual {v0, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 732
    :cond_5
    return-void

    :cond_6
    move v7, v9

    .line 712
    goto :goto_0

    :cond_7
    move v7, v9

    .line 718
    goto :goto_1

    :cond_8
    move v7, v9

    .line 721
    goto :goto_2

    :cond_9
    move v7, v9

    .line 724
    goto :goto_3

    :cond_a
    move v7, v9

    .line 727
    goto :goto_4

    :cond_b
    move v8, v9

    .line 730
    goto :goto_5
.end method

.method private updateDisableNavkeysOption()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dev_force_show_navbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 689
    .local v0, "enabled":Z
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 690
    return-void
.end method

.method private static writeDisableNavkeysOption(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 664
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 665
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x10e005c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 668
    .local v0, "defaultBrightness":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dev_force_show_navbar"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    invoke-static {p0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v1

    .line 671
    .local v1, "hardware":Lmokee/hardware/MKHardwareManager;
    const/16 v4, 0x20

    invoke-virtual {v1, v4, p1}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    .line 674
    if-eqz p1, :cond_1

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "button_brightness"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    :goto_1
    return-void

    .end local v1    # "hardware":Lmokee/hardware/MKHardwareManager;
    :cond_0
    move v4, v5

    .line 668
    goto :goto_0

    .line 678
    .restart local v1    # "hardware":Lmokee/hardware/MKHardwareManager;
    :cond_1
    const-string v4, "pre_navbar_button_backlight"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 680
    .local v2, "oldBright":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "button_brightness"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const v11, 0x7f070011

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 160
    .local v4, "prefScreen":Landroid/preference/PreferenceScreen;
    const-string v11, "power_end_call"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    .line 163
    const-string v11, "home_answer_call"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    .line 166
    const-string v11, "volume_answer_call"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeAnswerCall:Landroid/preference/SwitchPreference;

    .line 168
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHandler:Landroid/os/Handler;

    .line 171
    const-string v11, "disable_nav_keys"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    .line 173
    const-string v11, "navigation_bar_category"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    .line 176
    const-string v11, "navigation_bar_left"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationBarLeftPref:Landroid/preference/SwitchPreference;

    .line 179
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "navigation_bar_height"

    const/16 v13, 0x30

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 181
    .local v8, "statusNavButtonsHeight":I
    const-string v11, "navigation_bar_height"

    invoke-direct {p0, v11, v8}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavButtonsHeight:Landroid/preference/ListPreference;

    .line 184
    const-string v11, "navigation_recents_long_press"

    invoke-direct {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initRecentsLongPressAction(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    .line 187
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getPreferencesToRemove(Lcom/flyme/deviceoriginalsettings/ButtonSettings;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 189
    .local v7, "prefsToRemove":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 192
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 196
    .local v6, "preferenceCategory":Landroid/preference/PreferenceCategory;
    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 202
    .end local v6    # "preferenceCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v0    # "category":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/flyme/deviceoriginalsettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "volume_key_cursor_control"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 209
    .local v1, "cursorControlAction":I
    const-string v11, "volume_key_cursor_control"

    invoke-direct {p0, v11, v1}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->initActionList(Ljava/lang/String;I)Landroid/preference/ListPreference;

    move-result-object v11

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 212
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "swap_volume_keys_on_rotation"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 214
    .local v9, "swapVolumeKeys":I
    const-string v11, "swap_volume_buttons"

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    .line 216
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_3

    .line 217
    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-lez v9, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 221
    .end local v1    # "cursorControlAction":I
    .end local v9    # "swapVolumeKeys":I
    :cond_3
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    if-nez v11, :cond_4

    .line 223
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    :cond_4
    const-string v11, "camera_wake_screen"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    .line 227
    const-string v11, "camera_sleep_on_release"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    .line 229
    const-string v11, "camera_launch"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mCameraLaunch:Landroid/preference/SwitchPreference;

    .line 231
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mCameraWakeScreen:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_5

    .line 232
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_5

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x112004b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_5

    .line 234
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mCameraSleepOnRelease:Landroid/preference/SwitchPreference;

    const-string v12, "camera_wake_screen"

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 238
    :cond_5
    const-string v11, "volume_wake_screen"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    .line 239
    const-string v11, "volbtn_music_controls"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    .line 241
    const-string v11, "volume_keys_control_ring_stream"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    .line 243
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "volume_keys_control_ring_stream"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 245
    .local v10, "volumeControlRingtone":I
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_6

    .line 246
    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    if-lez v10, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 249
    :cond_6
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_7

    .line 250
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_7

    .line 251
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeMusicControls:Landroid/preference/SwitchPreference;

    const-string v12, "volume_wake_screen"

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    .line 252
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeWakeScreen:Landroid/preference/SwitchPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 255
    :cond_7
    return-void

    .line 217
    .end local v10    # "volumeControlRingtone":I
    .restart local v1    # "cursorControlAction":I
    .restart local v9    # "swapVolumeKeys":I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 246
    .end local v1    # "cursorControlAction":I
    .end local v9    # "swapVolumeKeys":I
    .restart local v10    # "volumeControlRingtone":I
    :cond_9
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 605
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    .line 606
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_home_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    :goto_0
    return v3

    .line 609
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 610
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeDoubleTapAction:Landroid/preference/ListPreference;

    const-string v5, "key_home_double_tap_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 614
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mMenuPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_menu_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    .line 618
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mMenuLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_menu_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_3
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavButtonsHeight:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4

    .line 622
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavButtonsHeight:Landroid/preference/ListPreference;

    const-string v5, "navigation_bar_height"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_4
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_5

    .line 626
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAssistPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_assist_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_5
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 630
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAssistLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_assist_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_6
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_7

    .line 634
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_app_switch_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_7
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_8

    .line 638
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    const-string v5, "key_app_switch_long_press_action"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_8
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_9

    .line 642
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    const-string v5, "volume_key_cursor_control"

    invoke-direct {p0, v4, p2, v5}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleActionListChange(Landroid/preference/ListPreference;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_9
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_b

    move-object v1, p2

    .line 648
    check-cast v1, Ljava/lang/String;

    .line 649
    .local v1, "putString":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 650
    .local v0, "index":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v2, v4, v0

    .line 652
    .local v2, "summary":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationRecentsLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 654
    const/4 v1, 0x0

    .line 656
    :cond_a
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "recents_long_press_activity"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 660
    .end local v0    # "index":I
    .end local v1    # "putString":Ljava/lang/String;
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 747
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 748
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mSwapVolumeButtons:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/cm/ScreenType;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 750
    .local v0, "value":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swap_volume_keys_on_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 781
    .end local v0    # "value":I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    move v0, v1

    .line 748
    goto :goto_0

    .line 752
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_5

    .line 753
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeControlRingStream:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 754
    .restart local v0    # "value":I
    :goto_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_keys_control_ring_stream"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v0    # "value":I
    :cond_4
    move v0, v1

    .line 753
    goto :goto_3

    .line 756
    :cond_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_6

    .line 757
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 758
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mNavigationPreferencesCat:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 759
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mDisableNavigationKeys:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->writeDisableNavkeysOption(Landroid/content/Context;Z)V

    .line 760
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->updateDisableNavkeysOption()V

    .line 761
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->updateDisableNavkeysCategories(Z)V

    .line 762
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/ButtonSettings;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 770
    :cond_6
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_7

    .line 771
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_2

    .line 773
    :cond_7
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_8

    .line 774
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    goto :goto_2

    .line 776
    :cond_8
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeAnswerCall:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1

    .line 777
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->handleToggleVolumeButtonAnswerCallPreferenceClick()V

    goto :goto_2
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 488
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 491
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "incall_power_button_behavior"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 495
    .local v2, "incallPowerBehavior":I
    if-ne v2, v10, :cond_3

    move v4, v6

    .line 497
    .local v4, "powerButtonEndsCall":Z
    :goto_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mPowerEndCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 501
    .end local v2    # "incallPowerBehavior":I
    .end local v4    # "powerButtonEndsCall":Z
    :cond_0
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ring_home_button_behavior"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 505
    .local v1, "incallHomeBehavior":I
    if-ne v1, v10, :cond_4

    move v0, v6

    .line 507
    .local v0, "homeButtonAnswersCall":Z
    :goto_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mHomeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 511
    .end local v0    # "homeButtonAnswersCall":Z
    .end local v1    # "incallHomeBehavior":I
    :cond_1
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeAnswerCall:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ring_volume_button_behavior"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 515
    .local v3, "incallVolumeBehavior":I
    if-ne v3, v10, :cond_5

    move v5, v6

    .line 517
    .local v5, "volumeButtonAnswersCall":Z
    :goto_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/ButtonSettings;->mVolumeAnswerCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 520
    .end local v3    # "incallVolumeBehavior":I
    .end local v5    # "volumeButtonAnswersCall":Z
    :cond_2
    return-void

    .restart local v2    # "incallPowerBehavior":I
    :cond_3
    move v4, v7

    .line 495
    goto :goto_0

    .end local v2    # "incallPowerBehavior":I
    .restart local v1    # "incallHomeBehavior":I
    :cond_4
    move v0, v7

    .line 505
    goto :goto_1

    .end local v1    # "incallHomeBehavior":I
    .restart local v3    # "incallVolumeBehavior":I
    :cond_5
    move v5, v7

    .line 515
    goto :goto_2
.end method
