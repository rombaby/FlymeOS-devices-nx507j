.class public Lcom/flyme/deviceoriginalsettings/ApnSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ApnSettings$2;,
        Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;,
        Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mDialog:Landroid/app/ProgressDialog;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUseNvOperatorForEhrpd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 93
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 106
    const-string v0, "persist.radio.use_nv_for_ehrpd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    .line 114
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 520
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ApnSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/ApnSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ApnSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "operator"

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method private createApnPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flyme/deviceoriginalsettings/ApnPreference;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "readOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 320
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ApnPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/flyme/deviceoriginalsettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    invoke-virtual {v0, p5}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setApnReadOnly(Z)V

    .line 323
    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {v0, p3}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setPersistent(Z)V

    .line 327
    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    if-eqz p4, :cond_0

    const-string v2, "mms"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setSelectable(Z)V

    .line 330
    return-object v0
.end method

.method private fillList()V
    .locals 38

    .prologue
    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getOperatorNumericSelection()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, "where":Ljava/lang/String;
    const/4 v4, 0x7

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "read_only"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string v5, "mvno_type"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string v5, "mvno_match_data"

    aput-object v5, v6, v4

    .line 230
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const-string v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 233
    .local v23, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v37

    .line 234
    .local v37, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v36

    .line 235
    .local v36, "simOperatorName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v26

    .line 236
    .local v26, "imsiSIM":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v24

    .line 238
    .local v24, "gid1":Ljava/lang/String;
    if-eqz v23, :cond_f

    .line 239
    const-string v4, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    .line 240
    .local v22, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 242
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v28, "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v33, "mvnoSpnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v30, "mvnoGid1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v31, "mvnoImsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 249
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 250
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "name":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 252
    .local v11, "apn":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 253
    .local v12, "key":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, "type":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v15, 0x1

    .line 255
    .local v15, "readOnly":Z
    :goto_1
    const/4 v4, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 256
    .local v14, "mvnoType":Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 257
    .local v29, "mvnoData":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v27, 0x1

    .line 259
    .local v27, "isMvno":Z
    :goto_2
    if-eqz v27, :cond_5

    .line 260
    move-object/from16 v0, v29

    move-object/from16 v1, v36

    move-object/from16 v2, v26

    move-object/from16 v3, v24

    invoke-static {v14, v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mvnoMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    new-instance v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v15}, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;-><init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    .local v8, "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    const-string v4, "spn"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    .end local v14    # "mvnoType":Ljava/lang/String;
    .end local v15    # "readOnly":Z
    .end local v27    # "isMvno":Z
    .end local v29    # "mvnoData":Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 257
    .restart local v14    # "mvnoType":Ljava/lang/String;
    .restart local v15    # "readOnly":Z
    .restart local v29    # "mvnoData":Ljava/lang/String;
    :cond_2
    const/16 v27, 0x0

    goto :goto_2

    .line 265
    .restart local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    .restart local v27    # "isMvno":Z
    :cond_3
    const-string v4, "gid"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_4
    const-string v4, "imsi"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    :cond_5
    move-object/from16 v16, p0

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move/from16 v21, v15

    .line 274
    invoke-direct/range {v16 .. v21}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->createApnPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flyme/deviceoriginalsettings/ApnPreference;

    move-result-object v34

    .line 276
    .local v34, "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    invoke-virtual/range {v34 .. v34}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->getSelectable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 278
    invoke-virtual/range {v34 .. v34}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setChecked()V

    .line 279
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find select key = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 283
    :cond_7
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 286
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "apn":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "type":Ljava/lang/String;
    .end local v14    # "mvnoType":Ljava/lang/String;
    .end local v15    # "readOnly":Z
    .end local v27    # "isMvno":Z
    .end local v29    # "mvnoData":Ljava/lang/String;
    .end local v34    # "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    :cond_8
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 288
    const/16 v32, 0x0

    .line 289
    .local v32, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 290
    move-object/from16 v32, v31

    .line 296
    :cond_9
    :goto_3
    if-eqz v32, :cond_e

    .line 297
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;

    .line 298
    .restart local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    iget-object v0, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->apn:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-boolean v0, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->readOnly:Z

    move/from16 v21, v0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->createApnPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/flyme/deviceoriginalsettings/ApnPreference;

    move-result-object v34

    .line 300
    .restart local v34    # "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    iget-boolean v4, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->selectable:Z

    if-eqz v4, :cond_d

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    iget-object v5, v8, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 302
    invoke-virtual/range {v34 .. v34}, Lcom/flyme/deviceoriginalsettings/ApnPreference;->setChecked()V

    .line 303
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find select key = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 291
    .end local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v34    # "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    :cond_b
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 292
    move-object/from16 v32, v30

    goto :goto_3

    .line 293
    :cond_c
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 294
    move-object/from16 v32, v33

    goto :goto_3

    .line 307
    .restart local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v34    # "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    :cond_d
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 312
    .end local v8    # "apnInfo":Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v34    # "pref":Lcom/flyme/deviceoriginalsettings/ApnPreference;
    :cond_e
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/preference/Preference;

    .line 313
    .local v35, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 316
    .end local v22    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v28    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v30    # "mvnoGid1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    .end local v31    # "mvnoImsiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    .end local v32    # "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    .end local v33    # "mvnoSpnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;>;"
    .end local v35    # "preference":Landroid/preference/Preference;
    :cond_f
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 138
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 570
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    if-eqz v3, :cond_0

    .line 572
    const-string v3, "ro.cdma.home.operator.numeric"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "mccMncForEhrpd":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 574
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    .end local v0    # "mccMncForEhrpd":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getIccOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "mccMncFromSim":Ljava/lang/String;
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorNumeric: sub= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mcc-mnc= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 582
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private getOperatorNumericSelection()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 561
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "mccmncs":[Ljava/lang/String;
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "where":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " or numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorNumericSelection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-object v1

    .line 563
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 564
    .restart local v1    # "where":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 441
    const/4 v7, 0x0

    .line 443
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 445
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 447
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 449
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 450
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 342
    .local v2, "len":I
    if-gtz v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v3

    .line 343
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 345
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 346
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 347
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-eq v0, v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v4, :cond_0

    .line 345
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "c":C
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static mvnoMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mvnoType"    # Ljava/lang/String;
    .param p1, "mvnoMatchData"    # Ljava/lang/String;
    .param p2, "serviceProviderName"    # Ljava/lang/String;
    .param p3, "imsiSIM"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 358
    const-string v3, "spn"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 363
    :cond_1
    const-string v3, "imsi"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    if-eqz p3, :cond_2

    invoke-static {p1, p3}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 374
    goto :goto_0

    .line 367
    :cond_3
    const-string v3, "gid"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 369
    .local v0, "mvno_match_data_length":I
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 454
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->showDialog(I)V

    .line 455
    sput-boolean v3, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 457
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;Lcom/flyme/deviceoriginalsettings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 463
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 465
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 466
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/flyme/deviceoriginalsettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 472
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 432
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 433
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 435
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v2, Lcom/flyme/deviceoriginalsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 158
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 162
    const v1, 0x7f0a0a11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUnavailable:Z

    .line 168
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_1
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 173
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    .line 176
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate received subId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 151
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 548
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 552
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 553
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0884

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 555
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 557
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a087c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 384
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0885

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 389
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 390
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 219
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 403
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 396
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 205
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 421
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 425
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 428
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 414
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 415
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 416
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 417
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 185
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    sget-boolean v0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ApnSettings;->fillList()V

    goto :goto_0
.end method

.method public removeDialog(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings;->mDialog:Landroid/app/ProgressDialog;

    .line 544
    return-void
.end method
