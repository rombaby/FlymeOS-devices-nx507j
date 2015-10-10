.class Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;

.field swatch:Landroid/graphics/drawable/ShapeDrawable;

.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter$ViewHolder;->this$1:Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$1;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter$ViewHolder;-><init>(Lcom/flyme/deviceoriginalsettings/sim/MultiSimEnablerPreference$SelectColorAdapter;)V

    return-void
.end method
