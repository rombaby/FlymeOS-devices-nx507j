.class Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList$1;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList$1;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList$1;->this$0:Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;

    # invokes: Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;->addAppGroup()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;->access$000(Lcom/flyme/deviceoriginalsettings/profiles/AppGroupList;)V

    .line 85
    return-void
.end method
