.class Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppViewHolder"
.end annotation


# instance fields
.field public final checkBox:Landroid/widget/CheckBox;

.field public final container:Landroid/view/View;

.field public final icon:Landroid/widget/ImageView;

.field public final launch:Landroid/view/View;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    const v0, 0x7f110119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;->container:Landroid/view/View;

    .line 313
    const v0, 0x7f110003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f110005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;->title:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f11011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;->launch:Landroid/view/View;

    .line 316
    const v0, 0x7f1100cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 317
    return-void
.end method
