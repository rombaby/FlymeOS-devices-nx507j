.class public Landroid/preference/CheckBoxPreference;
.super Landroid/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/CheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/preference/CheckBoxPreference$Listener;

.field private mNubiaPreference:Lnubia/preference/IPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v1, Landroid/preference/CheckBoxPreference$Listener;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference$Listener;-><init>(Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mListener:Landroid/preference/CheckBoxPreference$Listener;

    .line 56
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnubia/preference/NubiaPreference;

    invoke-direct {v1, p1}, Lnubia/preference/NubiaPreference;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Landroid/preference/CheckBoxPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    .line 67
    return-void

    .line 64
    :cond_0
    new-instance v1, Lnubia/preference/ProtoPreference;

    invoke-direct {v1, p1}, Lnubia/preference/ProtoPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 81
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/preference/CheckBoxPreference;->mNubiaPreference:Lnubia/preference/IPreference;

    iget-boolean v2, p0, Landroid/preference/CheckBoxPreference;->mChecked:Z

    iget-object v3, p0, Landroid/preference/CheckBoxPreference;->mListener:Landroid/preference/CheckBoxPreference$Listener;

    invoke-interface {v1, v0, v2, v3}, Lnubia/preference/IPreference;->setCheckBoxPreferenceBindView(Landroid/view/View;ZLandroid/preference/CheckBoxPreference$Listener;)V

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    .line 91
    return-void
.end method
