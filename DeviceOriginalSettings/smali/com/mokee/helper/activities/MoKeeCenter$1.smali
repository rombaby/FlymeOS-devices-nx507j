.class final Lcom/mokee/helper/activities/MoKeeCenter$1;
.super Ljava/lang/Object;
.source "MoKeeCenter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/app/Activity;

.field final synthetic val$mRequest:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mokee/helper/activities/MoKeeCenter$1;->val$mRequest:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mokee/helper/activities/MoKeeCenter$1;->val$mContext:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 138
    div-int/lit8 v0, p2, 0xa

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 139
    iget-object v0, p0, Lcom/mokee/helper/activities/MoKeeCenter$1;->val$mRequest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mokee/helper/activities/MoKeeCenter$1;->val$mContext:Landroid/app/Activity;

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit8 v4, p2, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 144
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    return-void
.end method
