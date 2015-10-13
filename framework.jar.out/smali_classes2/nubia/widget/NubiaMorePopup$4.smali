.class Lnubia/widget/NubiaMorePopup$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/NubiaMorePopup;->startEntryAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$4;->this$0:Lnubia/widget/NubiaMorePopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 474
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup$4;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lnubia/widget/NubiaMorePopup;->access$600(Lnubia/widget/NubiaMorePopup;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 475
    return-void
.end method
