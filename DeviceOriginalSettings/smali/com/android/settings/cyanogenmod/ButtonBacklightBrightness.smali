.class public Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;
.super Landroid/preference/DialogPreference;
.source "ButtonBacklightBrightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;,
        Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    }
.end annotation


# instance fields
.field private mActiveControl:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeoutBar:Landroid/widget/SeekBar;

.field private mTimeoutContainer:Landroid/view/ViewGroup;

.field private mTimeoutValue:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    .line 68
    const v2, 0x7f04001d

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setDialogLayoutResource(I)V

    .line 70
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->isKeyboardSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const-string v3, "keyboard_brightness"

    invoke-direct {v2, p0, v3, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 73
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->isButtonSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 79
    .local v1, "isSingleValue":Z
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 82
    .local v0, "defaultBrightness":I
    new-instance v2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const-string v3, "button_brightness"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 84
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .line 87
    .end local v0    # "defaultBrightness":I
    .end local v1    # "isSingleValue":Z
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;
    .param p1, "x1"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->updateTimeoutEnabledState()V

    return-void
.end method

.method private applyTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "button_backlight_timeout"

    mul-int/lit16 v2, p1, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    return-void
.end method

.method private getTimeout()I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "button_backlight_timeout"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private getTimeoutString(I)Ljava/lang/String;
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleTimeoutUpdate(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static isButtonSupported(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 227
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x10e0054

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 230
    .local v0, "deviceKeys":I
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x4

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x8

    if-nez v6, :cond_0

    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_1

    :cond_0
    move v2, v5

    .line 235
    .local v2, "hasBacklightKey":Z
    :goto_0
    const v6, 0x10e005c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-lez v6, :cond_2

    move v1, v5

    .line 238
    .local v1, "hasBacklight":Z
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    :goto_2
    return v5

    .end local v1    # "hasBacklight":Z
    .end local v2    # "hasBacklightKey":Z
    :cond_1
    move v2, v4

    .line 230
    goto :goto_0

    .restart local v2    # "hasBacklightKey":Z
    :cond_2
    move v1, v4

    .line 235
    goto :goto_1

    .restart local v1    # "hasBacklight":Z
    :cond_3
    move v5, v4

    .line 238
    goto :goto_2
.end method

.method public static isKeyboardSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBrightnessPreview()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 284
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mActiveControl:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 291
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 287
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    goto :goto_0
.end method

.method private updateTimeoutEnabledState()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v4, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 296
    .local v0, "buttonBrightness":I
    :goto_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 297
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 298
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "buttonBrightness":I
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    move v0, v3

    .line 294
    goto :goto_0

    .restart local v0    # "buttonBrightness":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    move v4, v3

    .line 298
    goto :goto_2

    .line 300
    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 102
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 104
    const v2, 0x7f110042

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    .line 105
    const v2, 0x7f110045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    .line 106
    const v2, 0x7f110044

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutValue:Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 108
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    .line 112
    const v2, 0x7f11003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    .local v0, "buttonContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    .line 120
    :goto_0
    const v2, 0x7f110047

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 121
    .local v1, "keyboardContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->init(Landroid/view/ViewGroup;)V

    .line 127
    :goto_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-nez v2, :cond_1

    .line 128
    :cond_0
    const v2, 0x7f110046

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_1
    return-void

    .line 116
    .end local v1    # "keyboardContainer":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 124
    .restart local v1    # "keyboardContainer":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 163
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pre_navbar_button_backlight"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->applyTimeout(I)V

    .line 175
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->applyBrightness()V

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->updateSummary()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 92
    const v0, 0x7f0a02a6

    new-instance v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$1;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 312
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->handleTimeoutUpdate(I)V

    .line 313
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 223
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    .line 214
    .local v0, "myState":Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 217
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    iget v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->setBrightness(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 188
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 202
    :cond_1
    :goto_0
    return-object v0

    .line 193
    :cond_2
    new-instance v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 194
    .local v0, "myState":Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mTimeoutBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    .line 195
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 318
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 323
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 139
    .local v0, "d":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 140
    .local v1, "defaultsButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$2;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$2;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mWindow:Landroid/view/Window;

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->updateBrightnessPreview()V

    .line 157
    return-void
.end method

.method public updateSummary()V
    .locals 7

    .prologue
    const v5, 0x7f0a010f

    const v3, 0x7f0a010d

    const/4 v4, 0x1

    .line 247
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mButtonBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v4}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v0

    .line 249
    .local v0, "buttonBrightness":I
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getTimeout()I

    move-result v1

    .line 251
    .local v1, "timeout":I
    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    .line 264
    .end local v0    # "buttonBrightness":I
    .end local v1    # "timeout":I
    :goto_0
    return-void

    .line 253
    .restart local v0    # "buttonBrightness":I
    .restart local v1    # "timeout":I
    :cond_0
    if-nez v1, :cond_1

    .line 254
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a010e

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->getTimeoutString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    .end local v0    # "buttonBrightness":I
    .end local v1    # "timeout":I
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->mKeyboardBrightness:Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;

    invoke-virtual {v2, v4}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness$BrightnessControl;->getBrightness(Z)I

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/ButtonBacklightBrightness;->setSummary(I)V

    goto :goto_0
.end method
