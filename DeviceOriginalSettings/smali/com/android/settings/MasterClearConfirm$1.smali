.class Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->onResetConfirmed()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;->access$100(Lcom/flyme/deviceoriginalsettings/MasterClearConfirm;)V

    .line 206
    return-void
.end method
