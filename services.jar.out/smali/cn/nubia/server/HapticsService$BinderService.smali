.class final Lcn/nubia/server/HapticsService$BinderService;
.super Lnubia/os/IHapticsService$Stub;
.source "HapticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/HapticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/HapticsService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/HapticsService;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-direct {p0}, Lnubia/os/IHapticsService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/HapticsService;Lcn/nubia/server/HapticsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/HapticsService;
    .param p2, "x1"    # Lcn/nubia/server/HapticsService$1;

    .prologue
    .line 871
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService$BinderService;-><init>(Lcn/nubia/server/HapticsService;)V

    return-void
.end method


# virtual methods
.method public getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 934
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/HapticsService;->getRingHapticsNameInternal(Landroid/os/IBinder;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 944
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->getRingHapticsValueInternal(ILandroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 939
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/HapticsService;->getRingHapticsValuesInternal(Landroid/os/IBinder;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public playEffectSeqBuff([BILandroid/os/IBinder;)V
    .locals 1
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 899
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/HapticsService;->playEffectSeqBuffInternal([BILandroid/os/IBinder;)V

    .line 900
    return-void
.end method

.method public playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 894
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playEffectSequenceInternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 895
    return-void
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 914
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/HapticsService;->playEffectSequenceRepeatInternal(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 915
    return-void
.end method

.method public playNubiaEffect(IZLandroid/os/IBinder;)V
    .locals 1
    .param p1, "effectID"    # I
    .param p2, "ignoreFeedBack"    # Z
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 954
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/HapticsService;->playNubiaEffectInternal(IZLandroid/os/IBinder;)V

    .line 955
    return-void
.end method

.method public playPatternRTP(IIIILandroid/os/IBinder;)V
    .locals 6
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 889
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/server/HapticsService;->playPatternRTPInternal(IIIILandroid/os/IBinder;)V

    .line 890
    return-void
.end method

.method public playRTPSeqBuff([BILandroid/os/IBinder;)V
    .locals 1
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 909
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/server/HapticsService;->playRTPSeqBuffInternal([BILandroid/os/IBinder;)V

    .line 910
    return-void
.end method

.method public playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 904
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playRTPSequenceInternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 905
    return-void
.end method

.method public playRingHaptics(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 929
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playRingHapticsInternal(ILandroid/os/IBinder;)V

    .line 930
    return-void
.end method

.method public playRingSeq(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 949
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playRingSeqInternal(ILandroid/os/IBinder;)V

    .line 950
    return-void
.end method

.method public playTimedEffect(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "effectDuration"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 884
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playTimedEffectInternal(ILandroid/os/IBinder;)V

    .line 885
    return-void
.end method

.method public playeffect(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 874
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playeffectInternal(ILandroid/os/IBinder;)V

    .line 875
    return-void
.end method

.method public playeffectforce(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 879
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->playeffectforceInternal(ILandroid/os/IBinder;)V

    .line 880
    return-void
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 924
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/HapticsService;->setAudioHapticEnabledInternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 925
    return-void
.end method

.method public stopPlayingEffect(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 919
    iget-object v0, p0, Lcn/nubia/server/HapticsService$BinderService;->this$0:Lcn/nubia/server/HapticsService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/HapticsService;->stopPlayingEffectInternal(Landroid/os/IBinder;)V

    .line 920
    return-void
.end method
