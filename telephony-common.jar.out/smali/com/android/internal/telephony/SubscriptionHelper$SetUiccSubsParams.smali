.class Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;
.super Ljava/lang/Object;
.source "SubscriptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUiccSubsParams"
.end annotation


# instance fields
.field public app3gpp2AppStatus:Ljava/lang/String;

.field public app3gpp2Id:I

.field public app3gppAppStatus:Ljava/lang/String;

.field public app3gppId:I

.field public slotId:I

.field public subStatus:I

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SubscriptionHelper;II)V
    .locals 1
    .param p2, "slot"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v0, -0x1

    .line 502
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->this$0:Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput p2, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->slotId:I

    .line 504
    iput p3, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->subStatus:I

    .line 505
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->app3gppId:I

    .line 506
    iput v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->app3gpp2Id:I

    .line 507
    const-string v0, "NO CHANGE IN SUBSCRIPTION"

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->app3gppAppStatus:Ljava/lang/String;

    .line 508
    const-string v0, "NO CHANGE IN SUBSCRIPTION"

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionHelper$SetUiccSubsParams;->app3gpp2AppStatus:Ljava/lang/String;

    .line 509
    return-void
.end method
