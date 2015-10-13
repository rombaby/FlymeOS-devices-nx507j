.class public interface abstract Lnubia/os/edge/IEdgePointerEventManager;
.super Ljava/lang/Object;
.source "IEdgePointerEventManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/edge/IEdgePointerEventManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
