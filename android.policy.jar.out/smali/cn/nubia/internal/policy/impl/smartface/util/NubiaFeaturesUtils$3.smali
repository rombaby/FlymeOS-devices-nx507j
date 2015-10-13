.class final Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$3;
.super Ljava/lang/Object;
.source "NubiaFeaturesUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealScreenSlideNodeForSmartFace(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$3;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils$3;->val$enable:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "2"

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->writeGloveTouchForSmartFace(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "0"

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->writeGloveTouchForSmartFace(Ljava/lang/String;)V

    goto :goto_0
.end method
