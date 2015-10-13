.class synthetic Lcom/android/internal/telephony/uicc/UiccController$2;
.super Ljava/lang/Object;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$telestatic$adapter$TeleStaticManager$UI:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 512
    invoke-static {}, Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;->values()[Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$cn$nubia$telestatic$adapter$TeleStaticManager$UI:[I

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$cn$nubia$telestatic$adapter$TeleStaticManager$UI:[I

    sget-object v1, Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;->UI2_8:Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$cn$nubia$telestatic$adapter$TeleStaticManager$UI:[I

    sget-object v1, Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;->UI3_0:Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;

    invoke-virtual {v1}, Lcn/nubia/telestatic/adapter/TeleStaticManager$UI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
