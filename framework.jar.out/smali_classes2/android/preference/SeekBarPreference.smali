.class public Landroid/preference/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mNubiaPreference:Lnubia/preference/IPreference;

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const v0, 0x1010504

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/preference/SeekBarPreference;->setMax(I)V

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnubia/preference/NubiaPreference;

    invoke-direct {v2, p1}, Lnubia/preference/NubiaPreference;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v2, p0, Landroid/preference/SeekBarPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    .line 63
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/preference/SeekBarPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    invoke-interface {v3}, Lnubia/preference/IPreference;->getSeekBarPreferenceLayout()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 67
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 70
    return-void

    .line 61
    .end local v1    # "layoutResId":I
    :cond_0
    new-instance v2, Lnubia/preference/ProtoPreference;

    invoke-direct {v2, p1}, Lnubia/preference/ProtoPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 141
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 142
    iget p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 144
    :cond_0
    if-gez p1, :cond_1

    .line 145
    const/4 p1, 0x0

    .line 147
    :cond_1
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 148
    iput p1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 149
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->persistInt(I)Z

    .line 150
    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 154
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Landroid/preference/SeekBarPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    invoke-interface {v1}, Lnubia/preference/IPreference;->getPreferenceSeekBarId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 91
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 92
    iget v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 93
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 94
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 116
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 122
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 178
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 181
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 231
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 226
    check-cast v0, Landroid/preference/SeekBarPreference$SavedState;

    .line 227
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 228
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    .line 229
    iget v1, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 230
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 205
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 211
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 212
    .local v0, "myState":Landroid/preference/SeekBarPreference$SavedState;
    iget v2, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->progress:I

    .line 213
    iget v2, p0, Landroid/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Landroid/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 214
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/SeekBarPreference;->setProgress(I)V

    .line 106
    return-void

    .line 104
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 186
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 191
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Landroid/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 130
    iget v0, p0, Landroid/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 131
    iput p1, p0, Landroid/preference/SeekBarPreference;->mMax:I

    .line 132
    invoke-virtual {p0}, Landroid/preference/SeekBarPreference;->notifyChanged()V

    .line 134
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 138
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 166
    .local v0, "progress":I
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/SeekBarPreference;->setProgress(IZ)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v1, p0, Landroid/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
