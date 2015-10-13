.class Lnubia/widget/MagnifierController$1;
.super Ljava/lang/Object;
.source "MagnifierController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/MagnifierController;->updatePosition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/MagnifierController;


# direct methods
.method constructor <init>(Lnubia/widget/MagnifierController;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lnubia/widget/MagnifierController$1;->this$0:Lnubia/widget/MagnifierController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lnubia/widget/MagnifierController$1;->this$0:Lnubia/widget/MagnifierController;

    # getter for: Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;
    invoke-static {v0}, Lnubia/widget/MagnifierController;->access$000(Lnubia/widget/MagnifierController;)Lnubia/widget/MagnifierView;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/MagnifierView;->invalidate()V

    .line 159
    return-void
.end method
