.class Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Package"
.end annotation


# instance fields
.field public color:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public timeoff:Ljava/lang/Integer;

.field public timeon:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/Integer;
    .param p3, "timeon"    # Ljava/lang/Integer;
    .param p4, "timeoff"    # Ljava/lang/Integer;

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    .line 489
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 490
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 491
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 492
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 507
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    .line 523
    :goto_0
    return-object v2

    .line 510
    :cond_0
    const-string v5, "="

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "app":[Ljava/lang/String;
    array-length v5, v0

    if-eq v5, v8, :cond_1

    move-object v2, v4

    .line 512
    goto :goto_0

    .line 514
    :cond_1
    aget-object v5, v0, v6

    const-string v6, ";"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "values":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    move-object v2, v4

    .line 516
    goto :goto_0

    .line 519
    :cond_2
    :try_start_0
    new-instance v2, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .local v2, "item":Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;
    goto :goto_0

    .line 522
    .end local v2    # "item":Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move-object v2, v4

    .line 523
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
