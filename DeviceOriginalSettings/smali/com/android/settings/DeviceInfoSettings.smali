.class public Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field mAdvancedSettings:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SecureSettingSwitchPreference;

.field mDevHitCountdown:I

.field mHits:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings$1;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings$1;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 361
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 369
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 370
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v2, "Unavailable"

    .line 378
    :goto_0
    return-object v2

    .line 373
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 374
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v2, "Unavailable"

    goto :goto_0

    .line 378
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0e1b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 436
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 413
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 416
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 418
    .local v6, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 419
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 420
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 422
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 423
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 425
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 436
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 430
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 351
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 347
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 336
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 338
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "bool"    # Z

    .prologue
    .line 290
    if-nez p2, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 292
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v5, 0x7f07001a

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 109
    const-string v5, "firmware_version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v5, "firmware_version"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 111
    const-string v5, "baseband_version"

    const-string v8, "gsm.version.baseband"

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v5, "fcc_equipment_id"

    const-string v8, "ro.ril.fccid"

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v5, "device_model"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "build_number"

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v5, "build_number"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 116
    const-string v5, "kernel_version"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    const-string v5, "mod_support"

    const-string v8, "ro.mk.support"

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v5, "mod_version"

    const-string v8, "ro.mk.version"

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v5, "mod_version"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    const-string v5, "build_date"

    const-string v8, "ro.build.date"

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 123
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0ce4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "status":Ljava/lang/String;
    const-string v5, "selinux_status"

    invoke-direct {p0, v5, v4}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "device_name"

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v5, "device_name"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "selinux_status"

    const-string v9, "ro.build.selinux"

    invoke-direct {p0, v5, v8, v9}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "safetylegal"

    const-string v9, "ro.url.safetylegal"

    invoke-direct {p0, v5, v8, v9}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "fcc_equipment_id"

    const-string v9, "ro.ril.fccid"

    invoke-direct {p0, v5, v8, v9}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 150
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "baseband_version"

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "device_feedback"

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "act":Landroid/app/Activity;
    const-string v5, "container"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 165
    .local v2, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v5, "terms"

    invoke-static {v0, v2, v5, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 167
    const-string v5, "license"

    invoke-static {v0, v2, v5, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 169
    const-string v5, "copyright"

    invoke-static {v0, v2, v5, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 171
    const-string v5, "webview_license"

    invoke-static {v0, v2, v5, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 175
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 176
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_6

    .line 177
    const-string v5, "system_update_settings"

    invoke-static {v0, v2, v5, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 186
    :goto_1
    const-string v5, "additional_system_update_settings"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;Z)V

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 192
    const-string v5, "regulatory_info"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 193
    .local v3, "pref":Landroid/preference/Preference;
    if-eqz v3, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    .end local v3    # "pref":Landroid/preference/Preference;
    :cond_4
    const-string v5, "advanced_mode"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SecureSettingSwitchPreference;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mAdvancedSettings:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SecureSettingSwitchPreference;

    .line 200
    const-string v8, "advanced_mode"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x11200bd

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v6

    :goto_2
    invoke-direct {p0, v8, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;Z)V

    .line 202
    return-void

    .line 125
    .end local v0    # "act":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_5
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0ce5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "status":Ljava/lang/String;
    const-string v5, "selinux_status"

    invoke-direct {p0, v5, v4}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    .end local v4    # "status":Ljava/lang/String;
    .restart local v0    # "act":Landroid/app/Activity;
    .restart local v2    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_6
    const-string v5, "system_update_settings"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_7
    move v5, v7

    .line 200
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 215
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firmware_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 217
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 218
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android"

    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_1
    return v3

    .line 224
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "build_number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    .line 232
    :cond_2
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 233
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_debugging_features"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    .line 235
    :cond_3
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_5

    .line 236
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 237
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v3, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a008f

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    sget-object v4, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 244
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/Index;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 248
    :cond_4
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0006

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(Ljava/lang/CharSequence;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto/16 :goto_0

    .line 253
    :cond_5
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v3, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a0090

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    sget-object v4, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto/16 :goto_0

    .line 257
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_6
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "device_feedback"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 258
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_0

    .line 259
    :cond_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mod_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 261
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 262
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mHits:[J

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 263
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "is_mk"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string v3, "android"

    const-class v4, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 269
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 206
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mAdvancedSettings:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SecureSettingSwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SecureSettingSwitchPreference;->setChecked(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 211
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
