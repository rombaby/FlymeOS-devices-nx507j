.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$000(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    .line 151
    return-void
.end method
