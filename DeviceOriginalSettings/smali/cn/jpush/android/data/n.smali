.class final Lcn/jpush/android/data/n;
.super Ljava/lang/Thread;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcn/jpush/android/data/l;

.field final synthetic d:Lcn/jpush/android/data/l;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "\u0015_\u000c\u001b5\nQ"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x6a

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "\u0015_\u000c\u001b5\nU"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcn/jpush/android/data/n;->z:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x63

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x36

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x69

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x6c

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Lcn/jpush/android/data/l;Landroid/content/Context;ILcn/jpush/android/data/l;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iput-object p2, p0, Lcn/jpush/android/data/n;->a:Landroid/content/Context;

    iput p3, p0, Lcn/jpush/android/data/n;->b:I

    iput-object p4, p0, Lcn/jpush/android/data/n;->c:Lcn/jpush/android/data/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v0, v0, Lcn/jpush/android/data/o;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/data/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v1, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v1, v1, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v1, v1, Lcn/jpush/android/data/o;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v2, v2, Lcn/jpush/android/data/l;->c:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/data/n;->z:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcn/jpush/android/data/n;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4}, Lcn/jpush/android/data/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/android/data/o;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v0, v0, Lcn/jpush/android/data/o;->h:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/data/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v1, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v1, v1, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v1, v1, Lcn/jpush/android/data/o;->h:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v2, v2, Lcn/jpush/android/data/l;->c:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/data/n;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcn/jpush/android/data/n;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3, v4}, Lcn/jpush/android/data/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/android/data/o;->m:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v0, v0, Lcn/jpush/android/data/o;->l:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->ad:Lcn/jpush/android/data/o;

    iget-object v0, v0, Lcn/jpush/android/data/o;->m:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->c:Ljava/lang/String;

    const/16 v1, 0x3f6

    iget-object v2, p0, Lcn/jpush/android/data/n;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v0, v0, Lcn/jpush/android/data/l;->c:Ljava/lang/String;

    iget v1, p0, Lcn/jpush/android/data/n;->b:I

    iget-object v2, p0, Lcn/jpush/android/data/n;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v0, p0, Lcn/jpush/android/data/n;->d:Lcn/jpush/android/data/l;

    iget-object v1, p0, Lcn/jpush/android/data/n;->c:Lcn/jpush/android/data/l;

    iget-object v2, p0, Lcn/jpush/android/data/n;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/data/l;->a(Lcn/jpush/android/data/l;Lcn/jpush/android/data/l;Landroid/content/Context;)V

    goto :goto_0
.end method
