.class public Lcn/nubia/internal/policy/impl/edge/ResConsts;
.super Ljava/lang/Object;
.source "ResConsts.java"


# static fields
.field static final ID_DRAWABLE_BOTH_SIDES_SLIDE:I = 0x3020009

.field static final ID_DRAWABLE_HANDS_HOLD_BOTH_SIDES:I = 0x302000c

.field static final ID_DRAWABLE_HAND_HOLD_AND_CLICK:I = 0x302000a

.field static final ID_DRAWABLE_HAND_HOLD_AND_LEAVE:I = 0x302000b

.field static final ID_DRAWABLE_LEFT_SIDE_SLIDE:I = 0x302000d

.field static final ID_DRAWABLE_RIGHT_SIDE_SLIDE:I = 0x302000e

.field static final ID_DRAWABLE_SIDE_SLIDE_BACK_AND_FORTH:I = 0x302000f

.field static final ID_LAYOUT_TIPS_DIALOG:I = 0x3030003

.field static final ID_LAYOUT_TIPS_DIALOG_LAND:I = 0x3030004

.field static final ID_TEXT_ACTION_BOTH_SIDES_SLIDE:I = 0x30c0076

.field static final ID_TEXT_ACTION_HANDS_HOLD_BOTH_SIDES:I = 0x30c007e

.field static final ID_TEXT_ACTION_HAND_HOLD_AND_CLICK:I = 0x30c0080

.field static final ID_TEXT_ACTION_HAND_HOLD_AND_LEAVE:I = 0x30c0074

.field static final ID_TEXT_ACTION_LEFT_SIDE_SLIDE:I = 0x30c007a

.field static final ID_TEXT_ACTION_RIGHT_SIDE_SLIDE:I = 0x30c007c

.field static final ID_TEXT_ACTION_SIDE_SLIDE_BACK_AND_FORTH:I = 0x30c0078

.field static final ID_TEXT_TIPS_BOTH_SIDES_SLIDE:I = 0x30c0075

.field static final ID_TEXT_TIPS_HANDS_HOLD_BOTH_SIDES:I = 0x30c007d

.field static final ID_TEXT_TIPS_HAND_HOLD_AND_CLICK:I = 0x30c007f

.field static final ID_TEXT_TIPS_HAND_HOLD_AND_LEAVE:I = 0x30c0073

.field static final ID_TEXT_TIPS_LEFT_SIDE_SLIDE:I = 0x30c0079

.field static final ID_TEXT_TIPS_RIGHT_SIDE_SLIDE:I = 0x30c007b

.field static final ID_TEXT_TIPS_SIDE_SLIDE_BACK_AND_FORTH:I = 0x30c0077

.field static final ID_VIEW_IKNOW:I = 0x30d0019

.field static final ID_VIEW_IMAGE:I = 0x30d0018

.field static final ID_VIEW_SETTING:I = 0x30d001a

.field static final ID_VIEW_TIPS:I = 0x30d0016

.field static final ID_VIEW_TIPS_ACTION:I = 0x30d0017

.field public static final TIPS_BOTH_SIDES_SLIDE:Ljava/lang/String; = "both_sides_slide"

.field public static final TIPS_HANDS_HOLD_BOTH_SIDES:Ljava/lang/String; = "hands_hold_both_sides"

.field public static final TIPS_HAND_HOLD_AND_CLICK:Ljava/lang/String; = "hand_hold_and_click"

.field public static final TIPS_HAND_HOLD_AND_LEAVE:Ljava/lang/String; = "hand_hold_and_leave"

.field public static final TIPS_IMAGE_RESIDS:[I

.field public static final TIPS_LEFT_SIDE_SLIDE:Ljava/lang/String; = "left_side_slide"

.field public static final TIPS_RIGHT_SIDE_SLIDE:Ljava/lang/String; = "right_side_slide"

.field public static final TIPS_SIDE_SLIDE_BACK_AND_FORTH:Ljava/lang/String; = "side_slide_back_and_forth"

.field public static final TIPS_TEXT_ACTION_RESIDS:[I

.field public static final TIPS_TEXT_TIPS_RESIDS:[I

.field public static final TYPE_BOTH_SIDES_SLIDE:I = 0x3

.field public static final TYPE_HANDS_HOLD_BOTH_SIDES:I = 0x4

.field public static final TYPE_HAND_HOLD_AND_CLICK:I = 0x6

.field public static final TYPE_HAND_HOLD_AND_LEAVE:I = 0x5

.field public static final TYPE_LEFT_SIDE_SLIDE:I = 0x0

.field public static final TYPE_RIGHT_SIDE_SLIDE:I = 0x1

.field public static final TYPE_SIDE_SLIDE_BACK_AND_FORTH:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_TEXT_TIPS_RESIDS:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_TEXT_ACTION_RESIDS:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_IMAGE_RESIDS:[I

    return-void

    .line 53
    nop

    :array_0
    .array-data 4
        0x30c0079
        0x30c007b
        0x30c0077
        0x30c0075
        0x30c007d
        0x30c0073
        0x30c007f
    .end array-data

    .line 62
    :array_1
    .array-data 4
        0x30c007a
        0x30c007c
        0x30c0078
        0x30c0076
        0x30c007e
        0x30c0074
        0x30c0080
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x302000d
        0x302000e
        0x302000f
        0x3020009
        0x302000c
        0x302000b
        0x302000a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
