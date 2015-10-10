.class Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$2;
.super Ljava/lang/Object;
.source "NFCProfileSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->showProfileSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$2;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect$2;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;

    # setter for: Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->currentChoice:I
    invoke-static {v0, p2}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;->access$002(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileSelect;I)I

    .line 94
    return-void
.end method
