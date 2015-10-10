.class final Lcn/jpush/android/data/v;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "+\u000fDP\u0015-}UP\u0003$\u0018!{1\u001d.iN2\u001c<ux2\u001c4bba@\u0002hua!\u0013UT\u0006-\u000f!A\u0013!\u0010@C\u0018H\u0016DHa)\u0008U^\u0008&\u001eST\u000c-\u0013U1m\u001b)^b.\u001a)^z$\u0011}ut9\u001c}o~5H3t}-D.uN/\r)!e$\u0010)!\u007f.\u001c}od-\u0004qre\u001e\u000b2o\u007f\u001e\u0001-!e$\u0010)!\u007f.\u001c}od-\u0004qre\u001e\u00042bp-79oba\u001c8yem\u001b)^b.\u001d/bta\u00013ut&\r/!\u007f.\u001c}od-\u0004qre\u001e\u000e<h}$\u000c}h\u007f5\r:dca\u00062u1/\u001d1m=2\u001c\u0002u~5\t1!x/\u001c8ft3H3nea\u0006(m}m\u001b)^r.\u001d3uNpH4oe$\u000f8s=2\u001c\u0002b~4\u0006)^ \u001e[}h\u007f5\r:dcm\u001b)^r.\u001d3uNr7l11(\u0006)dv$\u001aqre\u001e\u000b2t\u007f57l11(\u0006)dv$\u001at:"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x41

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "\u0002-tb)7.up5\u0001.ux\"\u001bses"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, ",\u000fNAa<\u001cC]\u0004H\u0014G1\u00040\u0014RE\u0012H7qd2\u0000\u0002re \u001c4re(\u000b."

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcn/jpush/android/data/v;->z:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x68

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x5d

    goto :goto_2

    :pswitch_4
    move v11, v2

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x11

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcn/jpush/android/data/v;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/jpush/android/data/v;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcn/jpush/android/data/v;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    sget-object v0, Lcn/jpush/android/data/v;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jpush/android/data/v;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
