.class Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .param p1, "focusChange"    # I

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 386
    :pswitch_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 388
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->access$300(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 389
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;->this$0:Landroid/preference/SeekBarVolumizer;

    const/4 v1, 0x0

    # setter for: Landroid/preference/SeekBarVolumizer;->mAudioFocusChangeListener:Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;
    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->access$202(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;)Landroid/preference/SeekBarVolumizer$AudioFocusChangeListener;

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
