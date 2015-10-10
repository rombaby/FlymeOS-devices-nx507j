.class public Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageFingerprints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ManageFingerprints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;
    }
.end annotation


# instance fields
.field private mFingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mFpManager:Landroid/service/fingerprint/FingerprintManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 288
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    .line 292
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 293
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    .line 295
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mRes:Landroid/content/res/Resources;

    .line 297
    return-void
.end method

.method private createAddFingerprintView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 388
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;-><init>()V

    .line 389
    .local v0, "holder":Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 390
    const v2, 0x7f11002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    .line 391
    const v2, 0x7f11010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    .line 392
    return-object v1
.end method

.method private createFingerprintView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 378
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040067

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 379
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;-><init>()V

    .line 380
    .local v0, "holder":Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 381
    const v2, 0x7f11002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    .line 382
    const v2, 0x7f11010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    .line 383
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 337
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumFingerprints()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 343
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getItemViewType(I)I

    move-result v2

    .line 344
    .local v2, "viewType":I
    if-nez v2, :cond_1

    .line 345
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 346
    .local v0, "fingerprintInfo":Landroid/hardware/fingerprint/Fingerprint;
    if-nez p2, :cond_0

    .line 347
    invoke-direct {p0, p3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->createFingerprintView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 349
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;

    .line 350
    .local v1, "holder":Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    .end local v0    # "fingerprintInfo":Landroid/hardware/fingerprint/Fingerprint;
    :goto_0
    return-object p2

    .line 353
    .end local v1    # "holder":Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;
    :cond_1
    if-nez p2, :cond_2

    .line 354
    invoke-direct {p0, p3}, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->createAddFingerprintView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 356
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;

    .line 357
    .restart local v1    # "holder":Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    const v4, 0x7f0a03f3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 358
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    const v4, 0x7f02003b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 361
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 362
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 365
    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter$Holder;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFpManager:Landroid/service/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/service/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/ManageFingerprints$FingerprintAdapter;->mFingerprints:Ljava/util/List;

    .line 302
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 303
    return-void
.end method
