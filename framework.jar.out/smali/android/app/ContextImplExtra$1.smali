.class final Landroid/app/ContextImplExtra$1;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImplExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImplExtra;->register(Lnubia/os/NubiaServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lnubia/os/NubiaServiceInfo;


# direct methods
.method constructor <init>(Lnubia/os/NubiaServiceInfo;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Landroid/app/ContextImplExtra$1;->val$c:Lnubia/os/NubiaServiceInfo;

    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/app/ContextImplExtra$1;->val$c:Lnubia/os/NubiaServiceInfo;

    invoke-interface {v0}, Lnubia/os/NubiaServiceInfo;->getServiceProxy()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
