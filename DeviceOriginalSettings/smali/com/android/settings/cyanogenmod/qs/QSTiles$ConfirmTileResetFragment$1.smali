.class Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;->resetTiles(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;->access$200(Landroid/content/Context;)Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ConfirmTileResetFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;

    .line 334
    .local v0, "targetFragment":Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;
    if-eqz v0, :cond_0

    .line 335
    # invokes: Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;->rebuildTiles()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;->access$300(Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles;)V

    .line 337
    :cond_0
    return-void
.end method
