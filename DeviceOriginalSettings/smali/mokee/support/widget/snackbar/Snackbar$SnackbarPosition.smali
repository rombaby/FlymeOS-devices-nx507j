.class public final enum Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;
.super Ljava/lang/Enum;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/support/widget/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnackbarPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

.field public static final enum BOTTOM_CENTER:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

.field private static final synthetic ENUM$VALUES:[Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

.field public static final enum TOP:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;


# instance fields
.field private layoutGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    const-string v1, "TOP"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v3, v2}, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->TOP:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    const-string v1, "BOTTOM"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v4, v2}, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    const-string v1, "BOTTOM_CENTER"

    const/16 v2, 0x51

    invoke-direct {v0, v1, v5, v2}, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    sget-object v1, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->TOP:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    aput-object v1, v0, v3

    sget-object v1, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    aput-object v1, v0, v4

    sget-object v1, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    aput-object v1, v0, v5

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->ENUM$VALUES:[Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "layoutGravity"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->layoutGravity:I

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    return-object v0
.end method

.method public static values()[Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->ENUM$VALUES:[Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    array-length v1, v0

    new-array v2, v1, [Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getLayoutGravity()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lmokee/support/widget/snackbar/Snackbar$SnackbarPosition;->layoutGravity:I

    return v0
.end method
