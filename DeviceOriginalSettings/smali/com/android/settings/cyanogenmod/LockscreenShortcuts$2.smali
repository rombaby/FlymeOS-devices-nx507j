.class Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$2;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;

    # getter for: Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$ActionHolder;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;->access$100(Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;)Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$ActionHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts$ActionHolder;->getAction(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;->access$200(Lcom/flyme/deviceoriginalsettings/cyanogenmod/LockscreenShortcuts;Ljava/lang/String;)V

    .line 180
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    return-void
.end method
