.class public Lnubia/os/HapticsServiceInfo;
.super Ljava/lang/Object;
.source "HapticsServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "haptics"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "haptics"

    return-object v0
.end method

.method public getServiceProxy()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lnubia/os/SystemHaptics;

    invoke-direct {v0}, Lnubia/os/SystemHaptics;-><init>()V

    return-object v0
.end method
