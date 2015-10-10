.class Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;)I
    .locals 2
    .param p1, "lhs"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;
    .param p2, "rhs"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;

    .prologue
    .line 300
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 297
    check-cast p1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;->compare(Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;Lcom/flyme/deviceoriginalsettings/cyanogenmod/qs/QSTileHolder;)I

    move-result v0

    return v0
.end method
