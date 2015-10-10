.class Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$1;
.super Ljava/lang/Object;
.source "WakeLockBlocker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$1;->this$0:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 279
    return-void
.end method
