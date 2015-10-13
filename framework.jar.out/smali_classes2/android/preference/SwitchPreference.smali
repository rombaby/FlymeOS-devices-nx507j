.class public Landroid/preference/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SwitchPreference$1;,
        Landroid/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/preference/SwitchPreference$Listener;

.field private mNubiaPreference:Lnubia/preference/IPreference;

.field private mSwitchContext:Landroid/content/Context;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v1, Landroid/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/preference/SwitchPreference$Listener;-><init>(Landroid/preference/SwitchPreference;Landroid/preference/SwitchPreference$1;)V

    iput-object v1, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    .line 81
    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnubia/preference/NubiaPreference;

    invoke-direct {v1, p1}, Lnubia/preference/NubiaPreference;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Landroid/preference/SwitchPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    .line 85
    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 91
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void

    .line 82
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v1, Lnubia/preference/ProtoPreference;

    invoke-direct {v1, p1}, Lnubia/preference/ProtoPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 138
    iget-object v2, p0, Landroid/preference/SwitchPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    invoke-interface {v2}, Lnubia/preference/IPreference;->getPreferenceNubiaSwitchId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Landroid/preference/SwitchPreference;->mSwitchContext:Landroid/content/Context;

    invoke-static {v2}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    instance-of v2, v0, Lnubia/widget/NubiaSwitch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 144
    check-cast v1, Lnubia/widget/NubiaSwitch;

    .line 145
    .local v1, "switchView":Lnubia/widget/NubiaSwitch;
    invoke-virtual {v1, v3}, Lnubia/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Lnubia/widget/NubiaSwitch;
    :cond_0
    move-object v2, v0

    .line 147
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Landroid/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 148
    instance-of v2, v0, Lnubia/widget/NubiaSwitch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 149
    check-cast v1, Lnubia/widget/NubiaSwitch;

    .line 150
    .restart local v1    # "switchView":Lnubia/widget/NubiaSwitch;
    iget-object v2, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Lnubia/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    .end local v1    # "switchView":Lnubia/widget/NubiaSwitch;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 171
    return-void

    .line 154
    :cond_2
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 155
    check-cast v1, Landroid/widget/Switch;

    .line 156
    .local v1, "switchView":Landroid/widget/Switch;
    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_3
    move-object v2, v0

    .line 159
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Landroid/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 161
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 162
    check-cast v1, Landroid/widget/Switch;

    .line 163
    .restart local v1    # "switchView":Landroid/widget/Switch;
    iget-object v2, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Landroid/preference/SwitchPreference;->mListener:Landroid/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 193
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 180
    iput-object p1, p0, Landroid/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {p0}, Landroid/preference/SwitchPreference;->notifyChanged()V

    .line 182
    return-void
.end method
