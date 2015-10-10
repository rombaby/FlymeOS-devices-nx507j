.class public Lcom/google/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdRequest$Gender;,
        Lcom/google/ads/AdRequest$ErrorCode;
    }
.end annotation


# static fields
.field public static final TEST_EMULATOR:Ljava/lang/String;

.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# instance fields
.field private d:Lcom/google/ads/AdRequest$Gender;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/location/Location;

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    .line 147
    sput-object v2, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 148
    sput-object v2, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    .line 153
    :try_start_0
    const-string v0, "com.google.analytics.tracking.android.AdMobInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 155
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_1

    .line 157
    sput-object v3, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 154
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getJoinIds"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    .line 160
    sput-object v3, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v0, "No Google Analytics: Library Not Found."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 210
    :cond_2
    :goto_2
    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    return-void

    .line 164
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 165
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    .line 167
    const-string v0, "No Google Analytics: Library Incompatible."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 171
    :catch_1
    move-exception v0

    .line 172
    const-string v0, "No Google Analytics: Error Loading Library"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    .line 181
    iput-object v1, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    .line 184
    iput-object v1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 187
    iput-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    .line 194
    iput-object v1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    .line 197
    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->j:Z

    .line 200
    iput-boolean v2, p0, Lcom/google/ads/AdRequest;->k:Z

    .line 213
    iput-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "extrasClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 569
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v0, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 573
    const-string v0, "kw"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "cust_gender"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->d:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 583
    const-string v0, "cust_age"

    sget-object v1, Lcom/google/ads/AdRequest;->a:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/google/ads/AdRequest;->e:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 588
    const-string v0, "uule"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->i:Landroid/location/Location;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/location/Location;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_3
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->j:Z

    if-eqz v0, :cond_4

    .line 592
    const-string v0, "testing"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 596
    const-string v0, "adtest"

    const-string v1, "on"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_5
    :goto_0
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 614
    const-class v1, Lcom/google/ads/doubleclick/DfpExtras;

    invoke-virtual {p0, v1}, Lcom/google/ads/AdRequest;->getNetworkExtras(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/doubleclick/DfpExtras;

    .line 615
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 618
    const-string v0, "extras"

    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 626
    invoke-virtual {v1}, Lcom/google/ads/doubleclick/DfpExtras;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 628
    const-string v1, "ppid"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_7
    iget-object v0, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 633
    const-string v0, "mediation_extras"

    iget-object v1, p0, Lcom/google/ads/AdRequest;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_8
    :try_start_0
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 639
    sget-object v0, Lcom/google/ads/AdRequest;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 640
    sget-object v1, Lcom/google/ads/AdRequest;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    check-cast v0, Ljava/util/Map;

    .line 644
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 645
    const-string v1, "analytics_join_id"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_9
    :goto_2
    return-object v2

    .line 598
    :cond_a
    iget-boolean v0, p0, Lcom/google/ads/AdRequest;->k:Z

    if-nez v0, :cond_5

    .line 600
    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 601
    const-string v0, "AdRequest.TEST_EMULATOR"

    .line 605
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To get test ads on this device, call adRequest.addTestDevice("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 607
    iput-boolean v4, p0, Lcom/google/ads/AdRequest;->k:Z

    goto/16 :goto_0

    .line 603
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 619
    :cond_c
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 622
    const-string v3, "extras"

    invoke-virtual {v0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 648
    :catch_0
    move-exception v0

    .line 649
    const-string v1, "Internal Analytics Error:"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-object v1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 708
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 710
    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    iget-object v2, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->f:Ljava/util/Set;

    .line 347
    return-object p0
.end method

.method public setNetworkExtras(Lcom/google/ads/mediation/NetworkExtras;)Lcom/google/ads/AdRequest;
    .locals 2
    .param p1, "extras"    # Lcom/google/ads/mediation/NetworkExtras;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/google/ads/AdRequest;->h:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    return-object p0
.end method

.method public setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/AdRequest;"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, "testDevices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/ads/AdRequest;->l:Ljava/util/Set;

    .line 692
    return-object p0
.end method
