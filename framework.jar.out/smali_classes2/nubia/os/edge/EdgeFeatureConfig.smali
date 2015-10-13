.class public final Lnubia/os/edge/EdgeFeatureConfig;
.super Ljava/lang/Object;
.source "EdgeFeatureConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEdgeFeatureEnable()Z
    .locals 3

    .prologue
    .line 15
    const-string v1, "ro.nubia.edge.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isEdgeIncomplete()Z
    .locals 3

    .prologue
    .line 26
    const-string v1, "ro.nubia.edge.incomplete"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static loadConfig()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
