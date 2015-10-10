.class public final enum Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

.field public static final enum HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

.field public static final enum Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;


# instance fields
.field final footerMessage:I

.field final gestureEnabled:Z

.field final headerMessage:I

.field final leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

.field final rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 241
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0a048a

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->ContinueDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 245
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f0a049b

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Gone:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Ok:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 248
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x2

    const v3, 0x7f0a048d

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Retry:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Continue:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 251
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x3

    const v3, 0x7f0a048e

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->ConfirmDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 255
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x4

    const v3, 0x7f0a0488

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->ConfirmDisabled:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 259
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x5

    const v3, 0x7f0a048f

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;->Cancel:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    sget-object v5, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;->Confirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;-><init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    .line 239
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->HelpScreen:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->$VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;IZ)V
    .locals 0
    .param p3, "headerMessage"    # I
    .param p4, "leftMode"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;
    .param p5, "rightMode"    # Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;
    .param p6, "footerMessage"    # I
    .param p7, "gestureEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;",
            "Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 275
    iput p3, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->headerMessage:I

    .line 276
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->leftMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$LeftButtonMode;

    .line 277
    iput-object p5, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->rightMode:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$RightButtonMode;

    .line 278
    iput p6, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->footerMessage:I

    .line 279
    iput-boolean p7, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->gestureEnabled:Z

    .line 280
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    const-class v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->$VALUES:[Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v0}, [Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    return-object v0
.end method
