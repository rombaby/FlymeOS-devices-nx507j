.class public Lcom/mokee/helper/widget/ItemPreference;
.super Landroid/preference/Preference;
.source "ItemPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;,
        Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    }
.end annotation


# instance fields
.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mFileSizeText:Landroid/widget/TextView;

.field private mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

.field private mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

.field private mOnReadyListener:Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStyle:I

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mUpdatesButton:Landroid/widget/ImageView;

.field private mUpdatesPref:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mokee/helper/misc/ItemInfo;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ui"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p3, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 99
    const v0, 0x7f0b0005

    invoke-direct {p0, p1, v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    .line 75
    new-instance v0, Lcom/mokee/helper/widget/ItemPreference$1;

    invoke-direct {v0, p0}, Lcom/mokee/helper/widget/ItemPreference$1;-><init>(Lcom/mokee/helper/widget/ItemPreference;)V

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 100
    const v0, 0x7f0400b0

    invoke-virtual {p0, v0}, Lcom/mokee/helper/widget/ItemPreference;->setLayoutResource(I)V

    .line 101
    iput p3, p0, Lcom/mokee/helper/widget/ItemPreference;->mStyle:I

    .line 102
    iput-object p2, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/widget/ItemPreference;)Lcom/mokee/helper/widget/ItemPreference$OnActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mokee/helper/widget/ItemPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/widget/ItemPreference;

    .prologue
    .line 39
    iget v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mStyle:I

    return v0
.end method

.method private confirmDelete(I)V
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mokee/helper/widget/ItemPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    const v0, 0x7f0a0078

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0042

    new-instance v2, Lcom/mokee/helper/widget/ItemPreference$2;

    invoke-direct {v2, p0}, Lcom/mokee/helper/widget/ItemPreference$2;-><init>(Lcom/mokee/helper/widget/ItemPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 167
    return-void

    .line 156
    :cond_0
    const v0, 0x7f0a007a

    goto :goto_0
.end method

.method private disablePreferenceViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 235
    :cond_1
    return-void
.end method

.method private showStyle()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    iget v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 301
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 290
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mFileSizeText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePreferenceViews()V
    .locals 7

    .prologue
    const v2, 0x7f0a0048

    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 238
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 240
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/mokee/helper/widget/ItemPreference;->isEnabled()Z

    move-result v0

    .line 243
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v1, p0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    if-nez v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OTA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 262
    :goto_1
    iget-object v2, p0, Lcom/mokee/helper/widget/ItemPreference;->mFileSizeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/mokee/helper/widget/ItemPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ItemInfo;->getFileSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    invoke-direct {p0}, Lcom/mokee/helper/widget/ItemPreference;->showStyle()V

    .line 267
    .end local v0    # "enabled":Z
    :cond_1
    return-void

    .line 243
    .restart local v0    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mTitleText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mokee/helper/utils/Utils;->isNewVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 255
    :cond_4
    const v1, 0x7f0a0049

    goto :goto_3

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ItemInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v2}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    const/16 v2, 0x401

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 262
    :cond_6
    const-string v1, ""

    goto :goto_2
.end method


# virtual methods
.method public getItemInfo()Lcom/mokee/helper/misc/ItemInfo;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 110
    const v0, 0x7f1101ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mTitleText:Landroid/widget/TextView;

    .line 114
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mSummaryText:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f1101b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mFileSizeText:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f1101b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 118
    const v0, 0x7f1101b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    invoke-direct {p0}, Lcom/mokee/helper/widget/ItemPreference;->updatePreferenceViews()V

    .line 125
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mOnReadyListener:Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mOnReadyListener:Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;

    invoke-interface {v0, p0}, Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;->onReady(Lcom/mokee/helper/widget/ItemPreference;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/mokee/helper/widget/ItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/mokee/helper/misc/FetchChangeLogTask;

    invoke-direct {v1, v0}, Lcom/mokee/helper/misc/FetchChangeLogTask;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mokee/helper/misc/ItemInfo;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/FetchChangeLogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 135
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mokee/helper/widget/ItemPreference;->confirmDelete(I)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    if-eqz p1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/mokee/helper/widget/ItemPreference;->updatePreferenceViews()V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/mokee/helper/widget/ItemPreference;->disablePreferenceViews()V

    goto :goto_0
.end method

.method public setOnActionListener(Lcom/mokee/helper/widget/ItemPreference$OnActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mokee/helper/widget/ItemPreference;->mOnActionListener:Lcom/mokee/helper/widget/ItemPreference$OnActionListener;

    .line 186
    return-void
.end method

.method public setOnReadyListener(Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mokee/helper/widget/ItemPreference;->mOnReadyListener:Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;

    .line 190
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1, p0}, Lcom/mokee/helper/widget/ItemPreference$OnReadyListener;->onReady(Lcom/mokee/helper/widget/ItemPreference;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/mokee/helper/widget/ItemPreference;->mStyle:I

    .line 197
    iget-object v0, p0, Lcom/mokee/helper/widget/ItemPreference;->mUpdatesPref:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/mokee/helper/widget/ItemPreference;->showStyle()V

    .line 200
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdatePreference [mItemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mItemInfo:Lcom/mokee/helper/misc/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mokee/helper/widget/ItemPreference;->mStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
