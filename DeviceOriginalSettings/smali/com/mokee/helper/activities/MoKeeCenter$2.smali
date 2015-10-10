.class final Lcom/mokee/helper/activities/MoKeeCenter$2;
.super Ljava/lang/Object;
.source "MoKeeCenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isDonate:Z

.field final synthetic val$mContext:Landroid/app/Activity;

.field final synthetic val$mSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$unPaid:Ljava/lang/Float;


# direct methods
.method constructor <init>(ZLandroid/widget/SeekBar;Ljava/lang/Float;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    iput-object p2, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mSeekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$unPaid:Ljava/lang/Float;

    iput-object p4, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v6, 0x40c00000    # 6.0f

    const v5, 0x7f0a003c

    const v3, 0x7f0a003b

    const v4, 0x7f0a0038

    const v2, 0x7f0a0037

    .line 168
    iget-boolean v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "price":Ljava/lang/String;
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 180
    :goto_2
    return-void

    .line 168
    .end local v0    # "price":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$unPaid:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v1, v6

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$unPaid:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3

    .line 171
    .restart local v0    # "price":Ljava/lang/String;
    :pswitch_0
    iget-object v6, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    const-string v7, "paypal"

    iget-object v8, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_4
    invoke-virtual {v8, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mokee/helper/activities/MoKeeCenter;->sendPaymentRequest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v2, v1, v0}, Lcom/mokee/helper/activities/MoKeeCenter;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v5

    goto :goto_5

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    const-string v6, "alipay"

    iget-object v7, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    iget-boolean v8, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v8, :cond_5

    :goto_6
    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v7, :cond_6

    :goto_7
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mokee/helper/activities/MoKeeCenter;->sendPaymentRequest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v6, v2, v3, v0}, Lcom/mokee/helper/activities/MoKeeCenter;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_6

    :cond_6
    move v4, v5

    goto :goto_7

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    const-string v6, "unionpay"

    iget-object v7, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    iget-boolean v8, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v8, :cond_7

    :goto_8
    invoke-virtual {v7, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$mContext:Landroid/app/Activity;

    iget-boolean v7, p0, Lcom/mokee/helper/activities/MoKeeCenter$2;->val$isDonate:Z

    if-eqz v7, :cond_8

    :goto_9
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/mokee/helper/activities/MoKeeCenter;->sendPaymentRequest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v6, v2, v3, v0}, Lcom/mokee/helper/activities/MoKeeCenter;->access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move v2, v3

    goto :goto_8

    :cond_8
    move v4, v5

    goto :goto_9

    .line 169
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
