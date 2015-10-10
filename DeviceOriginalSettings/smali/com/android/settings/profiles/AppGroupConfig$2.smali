.class Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$2;
.super Ljava/lang/Object;
.source "AppGroupConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$2;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig$2;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->doDelete()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;->access$200(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupConfig;)V

    .line 277
    return-void
.end method
