.class public Lnubia/preference/ProtoPreference;
.super Ljava/lang/Object;
.source "ProtoPreference.java"

# interfaces
.implements Lnubia/preference/IPreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lnubia/preference/ProtoPreference;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public getDialogTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    return-object p1
.end method

.method public getPreferenceEdittextContainerId()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x1020356

    return v0
.end method

.method public getPreferenceMessageId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x102000b

    return v0
.end method

.method public getPreferenceNubiaSwitchId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x102035f

    return v0
.end method

.method public getPreferenceSeekBarId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x102035e

    return v0
.end method

.method public getSeekBarPreferenceLayout()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x10900a3

    return v0
.end method

.method public setCheckBoxPreferenceBindView(Landroid/view/View;ZLandroid/preference/CheckBoxPreference$Listener;)V
    .locals 0
    .param p1, "checkboxView"    # Landroid/view/View;
    .param p2, "checked"    # Z
    .param p3, "mListener"    # Landroid/preference/CheckBoxPreference$Listener;

    .prologue
    .line 18
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "checkboxView":Landroid/view/View;
    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 19
    return-void
.end method
