.class public Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;
.super Ljava/lang/Object;
.source "AirplaneModeItem.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;


# instance fields
.field mSettings:Lmokee/profiles/AirplaneModeSettings;


# direct methods
.method public constructor <init>(Lmokee/profiles/AirplaneModeSettings;)V
    .locals 0
    .param p1, "airplaneModeSettings"    # Lmokee/profiles/AirplaneModeSettings;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lmokee/profiles/AirplaneModeSettings;

    .end local p1    # "airplaneModeSettings":Lmokee/profiles/AirplaneModeSettings;
    invoke-direct {p1}, Lmokee/profiles/AirplaneModeSettings;-><init>()V

    .line 33
    .restart local p1    # "airplaneModeSettings":Lmokee/profiles/AirplaneModeSettings;
    :cond_0
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;->mSettings:Lmokee/profiles/AirplaneModeSettings;

    .line 34
    return-void
.end method

.method public static getModeString(Lmokee/profiles/AirplaneModeSettings;)I
    .locals 2
    .param p0, "settings"    # Lmokee/profiles/AirplaneModeSettings;

    .prologue
    .line 70
    invoke-virtual {p0}, Lmokee/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lmokee/profiles/AirplaneModeSettings;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const v0, 0x7f0a025c

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    const v0, 0x7f0a025b

    goto :goto_0

    .line 77
    :cond_1
    const v0, 0x7f0a0259

    goto :goto_0
.end method


# virtual methods
.method public getRowType()Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Lmokee/profiles/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;->mSettings:Lmokee/profiles/AirplaneModeSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    const v3, 0x7f040076

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f110005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0a00d1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v3, 0x7f11005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;->mSettings:Lmokee/profiles/AirplaneModeSettings;

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;->getModeString(Lmokee/profiles/AirplaneModeSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    return-object v2

    .line 53
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
