.class Landroid/preference/SeekBarVolumizer$1;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 85
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 87
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    const/4 v1, 0x0

    # setter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->access$202(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    .line 89
    :cond_0
    return-void
.end method
