.class Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Error while trying to synthesize sample text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 194
    return-void
.end method
