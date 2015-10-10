.class public final enum Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;
.super Ljava/lang/Enum;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/support/widget/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnackbarDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_INDEFINITE:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_SHORT:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;


# instance fields
.field private duration:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_SHORT"

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2, v3}, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_LONG"

    const-wide/16 v2, 0xdac

    invoke-direct {v0, v1, v5, v2, v3}, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    new-instance v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_INDEFINITE"

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v6, v2, v3}, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    sget-object v1, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v4

    sget-object v1, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v5

    sget-object v1, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v6

    sput-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->ENUM$VALUES:[Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "duration"    # J

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-wide p3, p0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->duration:J

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    return-object v0
.end method

.method public static values()[Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->ENUM$VALUES:[Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    array-length v1, v0

    new-array v2, v1, [Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->duration:J

    return-wide v0
.end method
