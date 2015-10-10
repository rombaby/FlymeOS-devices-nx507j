.class final enum Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;
.super Ljava/lang/Enum;
.source "EnrollFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NextButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

.field public static final enum Done:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

.field public static final enum FindSensor:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

.field public static final enum Gone:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

.field public static final enum Ok:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 198
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const-string v1, "FindSensor"

    const v2, 0x7f0a0407

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->FindSensor:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    .line 199
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const-string v1, "Done"

    const v2, 0x7f0a0409

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Done:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    .line 200
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const-string v1, "Ok"

    const v2, 0x104000a

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Ok:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    .line 201
    new-instance v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->FindSensor:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Done:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Ok:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->$VALUES:[Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 209
    iput p3, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->text:I

    .line 210
    iput-boolean p4, p0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->enabled:Z

    .line 211
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const-class v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->$VALUES:[Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    invoke-virtual {v0}, [Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/deviceoriginalsettings/EnrollFingerprint$EnrollFingerprintFragment$NextButtonMode;

    return-object v0
.end method
