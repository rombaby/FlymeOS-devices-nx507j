.class public Landroid/content/res/NubiaTypedArray;
.super Landroid/content/res/TypedArray;
.source "NubiaTypedArray.java"


# instance fields
.field private mIsNubiaResources:Z


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    .line 9
    invoke-virtual {p0}, Landroid/content/res/NubiaTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    instance-of v0, v0, Landroid/content/res/NubiaResources;

    iput-boolean v0, p0, Landroid/content/res/NubiaTypedArray;->mIsNubiaResources:Z

    .line 13
    return-void
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "str":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Landroid/content/res/NubiaTypedArray;->mIsNubiaResources:Z

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Landroid/content/res/NubiaTypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x0

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 40
    iget-object v2, p0, Landroid/content/res/NubiaTypedArray;->mData:[I

    add-int/lit8 v3, p1, 0x3

    aget v0, v2, v3

    .line 41
    .local v0, "id":I
    invoke-virtual {p0}, Landroid/content/res/NubiaTypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    check-cast v2, Landroid/content/res/NubiaResources;

    invoke-virtual {v2, v0}, Landroid/content/res/NubiaResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 45
    .end local v0    # "id":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 51
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/NubiaTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 52
    .local v0, "value":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 59
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1}, Landroid/content/res/NubiaTypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 62
    .end local v0    # "value":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/CharSequence;
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
