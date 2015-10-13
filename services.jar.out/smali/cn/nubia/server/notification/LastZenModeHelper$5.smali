.class Lcn/nubia/server/notification/LastZenModeHelper$5;
.super Ljava/lang/Object;
.source "LastZenModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/notification/LastZenModeHelper;->setFlagForSilentMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/notification/LastZenModeHelper;


# direct methods
.method constructor <init>(Lcn/nubia/server/notification/LastZenModeHelper;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcn/nubia/server/notification/LastZenModeHelper$5;->this$0:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper$5;->this$0:Lcn/nubia/server/notification/LastZenModeHelper;

    # getter for: Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcn/nubia/server/notification/LastZenModeHelper;->access$000(Lcn/nubia/server/notification/LastZenModeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "audio_none_zen_mode"

    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
