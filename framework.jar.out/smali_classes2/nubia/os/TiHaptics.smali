.class public Lnubia/os/TiHaptics;
.super Ljava/lang/Object;
.source "TiHaptics.java"

# interfaces
.implements Lnubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHaptics:Lnubia/os/Haptics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lnubia/os/SystemHaptics;

    invoke-direct {v0}, Lnubia/os/SystemHaptics;-><init>()V

    iput-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnubia/os/TiHaptics;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lnubia/os/SystemHaptics;

    invoke-direct {v0, p1}, Lnubia/os/SystemHaptics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    .line 31
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .param p1, "log_str"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method private isHapticsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x1

    .line 145
    .local v0, "intValue":I
    iget-object v2, p0, Lnubia/os/TiHaptics;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lnubia/os/TiHaptics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clickButton()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public clickKey()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public longPressBlank()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressButton()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "longPressButton"

    invoke-direct {p0, v0}, Lnubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressKeyEnd()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "longPressKey e"

    invoke-direct {p0, v0}, Lnubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressKeyStart()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "longPressKey s"

    invoke-direct {p0, v0}, Lnubia/os/TiHaptics;->LOG(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressTelButtonEnd()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public longPressTelButtonStart()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public notificationVibrator1()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/16 v1, 0x19

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnubia/os/Haptics;->playNubiaEffect(IZ)V

    .line 121
    :cond_0
    return-void
.end method

.method public notificationVibrator2()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/16 v1, 0x1a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnubia/os/Haptics;->playNubiaEffect(IZ)V

    .line 128
    :cond_0
    return-void
.end method

.method public slideButtonEnd()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method

.method public slideButtonStart()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lnubia/os/TiHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lnubia/os/TiHaptics;->mHaptics:Lnubia/os/Haptics;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lnubia/os/Haptics;->playNubiaEffect(I)V

    goto :goto_0
.end method
