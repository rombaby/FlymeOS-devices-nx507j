.class final Lcn/jpush/android/data/t;
.super Ljava/lang/Thread;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/jpush/android/data/s;

.field final synthetic c:Lcn/jpush/android/data/s;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "`.\u0002_\n"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x66

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\u001b(\u0013J\u0016+%\u0002W\u0002tf\u0003\\\r )\u0001\\F=.\u0019EFn+\u0019V\u0003nkV"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "(/\u001aW\\ai"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "=.\u0019E# 2\u001fF\u001fn6\u0004]\u0005+5\u0005\u0012\u0015:\'\u0004FF<3\u0018\u0013F=.\u0019E+!\"\u0013\u0012[n"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "bf\u0018W\u0003*\u0016\u0004W\n!\'\u0012`\u0003=)\u0003@\u0005+"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "bf\u001bA\u0001\u0007+\u0011g\u0014\"|"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x4e

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x46

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x76

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x32

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method constructor <init>(Lcn/jpush/android/data/s;Landroid/content/Context;Lcn/jpush/android/data/s;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iput-object p2, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x2

    const/16 v9, 0x3f6

    const/16 v8, 0x3e3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget v3, v3, Lcn/jpush/android/data/s;->X:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-object v3, v3, Lcn/jpush/android/data/s;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-boolean v3, v3, Lcn/jpush/android/data/s;->Y:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    iget-object v2, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget v2, v2, Lcn/jpush/android/data/s;->X:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-object v2, v2, Lcn/jpush/android/data/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v2, v8, v3}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v2, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    invoke-static {v2, v3}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v4, v2, Lcn/jpush/android/data/s;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v5, v2, Lcn/jpush/android/data/s;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v2, v2, Lcn/jpush/android/data/s;->W:Ljava/lang/String;

    iget-object v3, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-boolean v3, v3, Lcn/jpush/android/data/s;->Y:Z

    if-nez v3, :cond_4

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v8, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget v2, v2, Lcn/jpush/android/data/s;->X:I

    if-ne v2, v10, :cond_3

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v2, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-static {v2, v3}, Lcn/jpush/android/api/q;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-object v2, v2, Lcn/jpush/android/data/s;->S:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-object v2, v2, Lcn/jpush/android/data/s;->S:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v0, :cond_1

    iget-object v2, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget v2, v2, Lcn/jpush/android/data/s;->X:I

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget v0, v0, Lcn/jpush/android/data/s;->X:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v3, v3, Lcn/jpush/android/data/s;->Z:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v1, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v1, v1, Lcn/jpush/android/data/s;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v8, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move v3, v1

    :goto_2
    const/4 v6, 0x4

    if-ge v3, v6, :cond_b

    const/4 v2, 0x5

    const-wide/16 v6, 0x1388

    invoke-static {v5, v2, v6, v7}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :goto_3
    if-nez v0, :cond_7

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v9, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    const/16 v0, 0x3fd

    iget-object v1, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v1, v5}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    iget-object v0, v0, Lcn/jpush/android/data/s;->Z:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iget-object v6, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-virtual {v6}, Lcn/jpush/android/data/s;->f()Z

    move-result v6

    invoke-static {v0, v5, v3, v4, v6}, Lcn/jpush/android/data/d;->a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v5, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget-boolean v5, v5, Lcn/jpush/android/data/s;->q:Z

    if-eqz v5, :cond_8

    if-nez v0, :cond_8

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v9, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcn/jpush/android/util/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-virtual {v0}, Lcn/jpush/android/data/s;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/data/t;->z:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v8, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/data/t;->c:Lcn/jpush/android/data/s;

    iget v0, v0, Lcn/jpush/android/data/s;->X:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/data/t;->b:Lcn/jpush/android/data/s;

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcn/jpush/android/data/t;->a:Landroid/content/Context;

    invoke-static {v4, v9, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_3
.end method
