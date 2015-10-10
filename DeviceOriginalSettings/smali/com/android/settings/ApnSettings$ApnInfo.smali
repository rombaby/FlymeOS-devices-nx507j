.class Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;
.super Ljava/lang/Object;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnInfo"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field key:Ljava/lang/String;

.field mvnoType:Ljava/lang/String;

.field name:Ljava/lang/String;

.field readOnly:Z

.field selectable:Z

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/ApnSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "mvnoType"    # Ljava/lang/String;
    .param p7, "readOnly"    # Z

    .prologue
    .line 530
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->this$0:Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->name:Ljava/lang/String;

    .line 532
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->apn:Ljava/lang/String;

    .line 533
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->key:Ljava/lang/String;

    .line 534
    iput-object p6, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->mvnoType:Ljava/lang/String;

    .line 535
    iput-boolean p7, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->readOnly:Z

    .line 536
    if-eqz p5, :cond_0

    const-string v0, "mms"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/ApnSettings$ApnInfo;->selectable:Z

    .line 537
    return-void

    .line 536
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
