.class public final enum Lmokee/support/widget/snackbar/enums/SnackbarType;
.super Ljava/lang/Enum;
.source "SnackbarType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmokee/support/widget/snackbar/enums/SnackbarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lmokee/support/widget/snackbar/enums/SnackbarType;

.field public static final enum MULTI_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

.field public static final enum SINGLE_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;


# instance fields
.field private maxHeight:I

.field private maxLines:I

.field private minHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x30

    const/4 v5, 0x1

    .line 21
    new-instance v0, Lmokee/support/widget/snackbar/enums/SnackbarType;

    const-string v1, "SINGLE_LINE"

    move v4, v3

    .line 24
    invoke-direct/range {v0 .. v5}, Lmokee/support/widget/snackbar/enums/SnackbarType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lmokee/support/widget/snackbar/enums/SnackbarType;->SINGLE_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

    .line 25
    new-instance v6, Lmokee/support/widget/snackbar/enums/SnackbarType;

    const-string v7, "MULTI_LINE"

    .line 28
    const/16 v10, 0x50

    move v8, v5

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lmokee/support/widget/snackbar/enums/SnackbarType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lmokee/support/widget/snackbar/enums/SnackbarType;->MULTI_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

    .line 19
    new-array v0, v11, [Lmokee/support/widget/snackbar/enums/SnackbarType;

    sget-object v1, Lmokee/support/widget/snackbar/enums/SnackbarType;->SINGLE_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

    aput-object v1, v0, v2

    sget-object v1, Lmokee/support/widget/snackbar/enums/SnackbarType;->MULTI_LINE:Lmokee/support/widget/snackbar/enums/SnackbarType;

    aput-object v1, v0, v5

    sput-object v0, Lmokee/support/widget/snackbar/enums/SnackbarType;->ENUM$VALUES:[Lmokee/support/widget/snackbar/enums/SnackbarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p3, "minHeight"    # I
    .param p4, "maxHeight"    # I
    .param p5, "maxLines"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lmokee/support/widget/snackbar/enums/SnackbarType;->minHeight:I

    .line 36
    iput p4, p0, Lmokee/support/widget/snackbar/enums/SnackbarType;->maxHeight:I

    .line 37
    iput p5, p0, Lmokee/support/widget/snackbar/enums/SnackbarType;->maxLines:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmokee/support/widget/snackbar/enums/SnackbarType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmokee/support/widget/snackbar/enums/SnackbarType;

    return-object v0
.end method

.method public static values()[Lmokee/support/widget/snackbar/enums/SnackbarType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmokee/support/widget/snackbar/enums/SnackbarType;->ENUM$VALUES:[Lmokee/support/widget/snackbar/enums/SnackbarType;

    array-length v1, v0

    new-array v2, v1, [Lmokee/support/widget/snackbar/enums/SnackbarType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmokee/support/widget/snackbar/enums/SnackbarType;->maxHeight:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lmokee/support/widget/snackbar/enums/SnackbarType;->maxLines:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lmokee/support/widget/snackbar/enums/SnackbarType;->minHeight:I

    return v0
.end method
