.class public Lcn/jpush/android/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:D

.field private g:D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u0001\u0004\u0000P\u0000\u0016o\u0007\u0017V_BO\u0017\u0001\u0015D\nY\t9I\u0016[\u0018\u0008_ Z\u0008\u001f\u0004Y\u0010\u0008V\u0004\u000fZ\u000f\u001bR\nZ\u0002;T\u0006T/\u0015B\u0006\u0017V_BO\u0017\u0001\u0015D\nY\t4C\u0017B\u0003\u0008M Z\u0008\u001f\u0004Y\u0010\u0008V\u0004\u0011T\u0008\u0013I7L\u001c\u001f\u0004Y\u0017I\t\u0004O\u0017\u0000\u001bRA\u000fI\u001c\nAY\u0002\u001d\u0004Y\u0010\n\u0007"

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

    const/16 v5, 0x6c

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

    sput-object v0, Lcn/jpush/android/a/a;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x7a

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x26

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x63

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x35

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcn/jpush/android/a/a;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcn/jpush/android/a/a;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcn/jpush/android/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcn/jpush/android/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcn/jpush/android/a/a;->b:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcn/jpush/android/a/a;->c:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcn/jpush/android/a/a;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    :try_start_0
    sget-object v0, Lcn/jpush/android/a/a;->z:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcn/jpush/android/a/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcn/jpush/android/a/a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcn/jpush/android/a/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcn/jpush/android/a/a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcn/jpush/android/a/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcn/jpush/android/a/a;->f:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lcn/jpush/android/a/a;->g:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
