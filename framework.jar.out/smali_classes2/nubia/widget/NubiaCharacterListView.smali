.class public Lnubia/widget/NubiaCharacterListView;
.super Landroid/view/View;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private final BOUNDS:I

.field private final TAG:Ljava/lang/String;

.field protected b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private mChoose:I

.field private mFlag:Z

.field private mHighLightCharacterList:[Ljava/lang/String;

.field private mPaintBg:Landroid/graphics/Paint;

.field private mPaintTxt:Landroid/graphics/Paint;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupXLoc:I

.field private mRectBg:Landroid/graphics/RectF;

.field onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

.field private temp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    .line 30
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    .line 38
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 39
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 40
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    .line 41
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    .line 30
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    .line 38
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 39
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 40
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    .line 41
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v0, "NubiaCharacterListView"

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    .line 30
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const-string v1, "\u2022"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    .line 38
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 39
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 40
    const/16 v0, 0x32a

    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->BOUNDS:I

    .line 41
    iput-object v3, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lnubia/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaCharacterListView;

    .prologue
    .line 23
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private hidePopupWindow()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lnubia/widget/NubiaCharacterListView$1;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaCharacterListView$1;-><init>(Lnubia/widget/NubiaCharacterListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 308
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x3030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "popupContent":Landroid/view/View;
    const/high16 v1, 0x30d0000

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 66
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 68
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 69
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x308006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    .line 72
    return-void
.end method

.method private isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "highLightCharacterList"    # [Ljava/lang/String;
    .param p2, "currentCharacter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 271
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 275
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 276
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    const/4 v4, 0x1

    goto :goto_0

    .line 275
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showPopupWindow(Ljava/lang/String;F)V
    .locals 4
    .param p1, "letter"    # Ljava/lang/String;
    .param p2, "currentY"    # F

    .prologue
    .line 261
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x5

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p2, v3

    float-to-int v3, v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 169
    .local v4, "y":F
    iget v3, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 170
    .local v3, "oldChoose":I
    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 172
    .local v2, "listener":Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 174
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    return v9

    .line 177
    :pswitch_0
    iput-boolean v9, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    .line 178
    if-eq v3, v1, :cond_2

    if-eqz v2, :cond_2

    .line 179
    if-ltz v1, :cond_2

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 180
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;F)V

    .line 183
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v9, v5, :cond_2

    .line 184
    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 189
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    iget v6, p0, Lnubia/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7, v10, v10}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 195
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 196
    if-ltz v1, :cond_0

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 197
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, "\u2022"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 199
    iget-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v6, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v7, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 202
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lnubia/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;F)V

    .line 204
    :cond_4
    iget-object v5, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v5

    if-ne v9, v5, :cond_0

    .line 205
    iput v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 206
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 214
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    .line 215
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 216
    if-eqz v2, :cond_5

    .line 217
    invoke-interface {v2, v7}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 219
    :cond_5
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 223
    :pswitch_3
    invoke-direct {p0}, Lnubia/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 225
    if-eqz v2, :cond_6

    .line 226
    invoke-interface {v2, v7}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 228
    :cond_6
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLetter(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x1

    .line 93
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v0

    .line 94
    .local v0, "height":I
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v7

    .line 95
    .local v7, "width":I
    const/16 v10, 0x32a

    if-ge v0, v10, :cond_2

    .line 96
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->c:[Ljava/lang/String;

    iput-object v10, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 100
    :goto_0
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v6

    .line 101
    .local v6, "singleHeight":F
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x308006c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 103
    .local v3, "paintTextSize":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_3

    .line 104
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x309000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 106
    .local v5, "releaseTextColor":I
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    div-int/lit8 v10, v7, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget-object v12, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v8, v10, v11

    .line 113
    .local v8, "xPos":F
    int-to-float v10, v2

    mul-float/2addr v10, v6

    add-float v9, v10, v6

    .line 114
    .local v9, "yPos":F
    iget-boolean v10, p0, Lnubia/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v11, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v12, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-direct {p0, v11, v12}, Lnubia/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 117
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x309002b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 119
    .local v1, "highlightTextColor":I
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    .end local v1    # "highlightTextColor":I
    :cond_0
    iget v10, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    if-ne v2, v10, :cond_1

    .line 122
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x309000e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 124
    .local v4, "pressedTextColor":I
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 128
    .end local v4    # "pressedTextColor":I
    :cond_1
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v10, v10, v2

    const/high16 v11, 0x41200000    # 10.0f

    div-float v11, v6, v11

    sub-float v11, v9, v11

    iget-object v12, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v8, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->reset()V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 98
    .end local v2    # "i":I
    .end local v3    # "paintTextSize":F
    .end local v5    # "releaseTextColor":I
    .end local v6    # "singleHeight":F
    .end local v8    # "xPos":F
    .end local v9    # "yPos":F
    :cond_2
    iget-object v10, p0, Lnubia/widget/NubiaCharacterListView;->b:[Ljava/lang/String;

    iput-object v10, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .restart local v2    # "i":I
    .restart local v3    # "paintTextSize":F
    .restart local v6    # "singleHeight":F
    :cond_3
    return-void
.end method

.method protected drawViewBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 82
    .local v0, "backgroundColor":I
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 84
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->mRectBg:Landroid/graphics/RectF;

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->mPaintBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method public getSingleHeight()F
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->getHeight()I

    move-result v0

    .line 140
    .local v0, "height":I
    int-to-float v1, v0

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 295
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawViewBackground(Landroid/graphics/Canvas;)V

    .line 157
    invoke-virtual {p0, p1}, Lnubia/widget/NubiaCharacterListView;->drawLetter(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 147
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public setCurrentLetter(Ljava/lang/String;)V
    .locals 3
    .param p1, "letter"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    iget-object v2, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 244
    iget v1, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v2, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnubia/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    :cond_3
    iput v0, p0, Lnubia/widget/NubiaCharacterListView;->mChoose:I

    .line 254
    invoke-virtual {p0}, Lnubia/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 250
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setHighLightCharacterList([Ljava/lang/String;)V
    .locals 0
    .param p1, "characterList"    # [Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .prologue
    .line 312
    iput-object p1, p0, Lnubia/widget/NubiaCharacterListView;->onTouchingLetterChangedListener:Lnubia/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 313
    return-void
.end method
