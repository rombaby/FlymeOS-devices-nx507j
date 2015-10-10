.class public final Lcn/jpush/android/util/ah;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u001cm\u0004d%\u001cm\u000cs?0z\n~*\u0006~"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x4c

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ah;->z:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/util/ah;->a:Landroid/content/SharedPreferences;

    return-void

    :pswitch_0
    const/16 v5, 0x6f

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x19

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x65

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x10

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4

    invoke-static {p0}, Lcn/jpush/android/util/ah;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    sget-object v0, Lcn/jpush/android/util/ah;->a:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcn/jpush/android/util/ah;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/ah;->z:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/ah;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcn/jpush/android/util/ah;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    invoke-static {p0}, Lcn/jpush/android/util/ah;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
