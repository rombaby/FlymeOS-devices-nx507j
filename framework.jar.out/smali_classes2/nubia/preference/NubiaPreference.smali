.class public Lnubia/preference/NubiaPreference;
.super Ljava/lang/Object;
.source "NubiaPreference.java"

# interfaces
.implements Lnubia/preference/IPreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnubia/preference/NubiaPreference;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public getDialogTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceEdittextContainerId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x30d0042

    return v0
.end method

.method public getPreferenceMessageId()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x30d0043

    return v0
.end method

.method public getPreferenceNubiaSwitchId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x30d0045

    return v0
.end method

.method public getPreferenceSeekBarId()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x30d0044

    return v0
.end method

.method public getSeekBarPreferenceLayout()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x303001d

    return v0
.end method

.method public setCheckBoxPreferenceBindView(Landroid/view/View;ZLandroid/preference/CheckBoxPreference$Listener;)V
    .locals 2
    .param p1, "checkboxView"    # Landroid/view/View;
    .param p2, "checked"    # Z
    .param p3, "mListener"    # Landroid/preference/CheckBoxPreference$Listener;

    .prologue
    .line 20
    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    instance-of v1, p1, Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    move-object v0, p1

    .line 22
    check-cast v0, Landroid/widget/CompoundButton;

    .line 23
    .local v0, "switchView":Landroid/widget/CompoundButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "checkboxView":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 25
    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 29
    .end local v0    # "switchView":Landroid/widget/CompoundButton;
    :goto_0
    return-void

    .line 27
    .restart local p1    # "checkboxView":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "checkboxView":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
