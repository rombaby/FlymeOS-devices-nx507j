.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;
.super Landroid/preference/PreferenceActivity;
.source "SimStatus.java"


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultText:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    new-instance v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 210
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 221
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaInfo"    # Ljava/lang/String;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    const-string v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 244
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 247
    .local v1, "state":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void

    .line 251
    :pswitch_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_0

    .line 260
    :pswitch_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 6

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, "networktype":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 230
    .local v3, "subId":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 232
    .local v0, "actualDataNetworkType":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 234
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_1

    .line 235
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_0
    :goto_0
    const-string v4, "network_type"

    invoke-direct {p0, v4, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 236
    :cond_1
    if-eqz v1, :cond_0

    .line 237
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updatePhoneInfos()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 352
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    if-nez v0, :cond_1

    .line 355
    const-string v1, "SimStatus"

    const-string v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 360
    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus$2;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus$2;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    .line 327
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 329
    const-string v2, "br"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "rawNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 337
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_1
    const-string v2, "number"

    invoke-direct {p0, v2, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v2, :cond_2

    .line 344
    const-string v2, "latest_area_info"

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 346
    :cond_2
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 269
    .local v1, "state":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a04e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void

    .line 273
    :pswitch_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0a04df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_0
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a04e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 131
    const v3, 0x7f07001b

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 134
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a04c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 136
    const-string v3, "signal_strength"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 138
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 139
    .local v1, "defaultSlotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slot_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, "slotId":I
    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 146
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 148
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "slot_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    const v3, 0x7f0a03d2

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->finish()V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 161
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updatePreference()V

    .line 164
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 165
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 166
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->updateDataState()V

    .line 167
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x141

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 171
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "getLatestIntent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 180
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    .line 301
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 302
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 303
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    .local v0, "r":Landroid/content/res/Resources;
    if-eq v9, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 307
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 311
    .local v2, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 313
    .local v1, "signalAsu":I
    if-ne v6, v2, :cond_2

    .line 314
    const/4 v2, 0x0

    .line 317
    :cond_2
    if-ne v6, v1, :cond_3

    .line 318
    const/4 v1, 0x0

    .line 321
    :cond_3
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const v5, 0x7f0a0d97

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method
