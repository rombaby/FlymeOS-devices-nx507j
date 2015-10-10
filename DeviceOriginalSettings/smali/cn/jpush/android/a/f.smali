.class final Lcn/jpush/android/a/f;
.super Landroid/os/Handler;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Lcn/jpush/android/a/d;

.field private b:F

.field private c:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "1A2l\u0007\t\u007f\u001a@!,[;kiF"

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

    const/16 v9, 0x53

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

    const-string v1, "6Z=h\u00124QTf\u0016*DTf\u001b\'F3`\u0017"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "F6T"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "F#T"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "6g\u0007Qs\u000c{\u001bK"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "%m\u0018I\u0007\t\u007f\u001a@!,[;kiF("

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x66

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x8

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x74

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x25

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


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x3

    const/high16 v3, 0x4e7e0000

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->c(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/f;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/a/f;->c:Lorg/json/JSONArray;

    const/4 v0, 0x1

    iput v0, p0, Lcn/jpush/android/a/f;->b:F

    :sswitch_1
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->d(Lcn/jpush/android/a/d;)I

    move-result v0

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->c()Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v1}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/a/b;->g()F

    if-eqz v0, :cond_2

    iget v1, p0, Lcn/jpush/android/a/f;->b:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_2

    iput-object v0, p0, Lcn/jpush/android/a/f;->c:Lorg/json/JSONArray;

    iput v3, p0, Lcn/jpush/android/a/f;->b:F

    :cond_2
    const-wide/16 v0, 0x258

    invoke-virtual {p0, v8, v0, v1}, Lcn/jpush/android/a/f;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->d(Lcn/jpush/android/a/d;)I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-virtual {p0, v8}, Lcn/jpush/android/a/f;->removeMessages(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcn/jpush/android/a/f;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0, v9}, Lcn/jpush/android/a/d;->a(Lcn/jpush/android/a/d;I)I

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->d()[I

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->a()I

    new-array v0, v8, [Lorg/json/JSONArray;

    iget-object v3, p0, Lcn/jpush/android/a/f;->c:Lorg/json/JSONArray;

    aput-object v3, v0, v1

    iget-object v3, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v3}, Lcn/jpush/android/a/d;->e(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jpush/android/a/i;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v3}, Lcn/jpush/android/a/d;->e(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jpush/android/a/i;->c()Lorg/json/JSONArray;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_4
    iget-object v3, p0, Lcn/jpush/android/a/f;->c:Lorg/json/JSONArray;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jpush/android/a/f;->c:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v3, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    iget-object v4, p0, Lcn/jpush/android/a/f;->c:Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lcn/jpush/android/a/d;->a(Lorg/json/JSONArray;)V

    :cond_5
    aget-object v3, v0, v2

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    aget-object v1, v4, v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v1, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcn/jpush/android/a/d;->b(Lorg/json/JSONArray;)V

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    sget-object v1, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/a/d;->a(Lcn/jpush/android/a/d;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->d(Lcn/jpush/android/a/d;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->f(Lcn/jpush/android/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->f()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->g(Lcn/jpush/android/a/d;)I

    move-result v0

    iget-object v3, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v3}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jpush/android/a/b;->a()I

    move-result v3

    if-ne v0, v3, :cond_7

    :goto_1
    if-nez v2, :cond_f

    const/16 v0, 0xa

    sget v1, Lcn/jpush/android/a/d;->b:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcn/jpush/android/a/f;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->h(Lcn/jpush/android/a/d;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->h(Lcn/jpush/android/a/d;)[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->d()[I

    move-result-object v3

    if-eqz v3, :cond_f

    array-length v0, v3

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->h(Lcn/jpush/android/a/d;)[I

    move-result-object v0

    aget v0, v0, v1

    aget v4, v3, v1

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->h(Lcn/jpush/android/a/d;)[I

    move-result-object v0

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v0}, Lcn/jpush/android/a/d;->h(Lcn/jpush/android/a/d;)[I

    move-result-object v0

    array-length v6, v0

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_9

    iget-object v7, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-static {v7}, Lcn/jpush/android/a/d;->h(Lcn/jpush/android/a/d;)[I

    move-result-object v7

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_9
    move v0, v1

    :goto_3
    array-length v6, v3

    if-ge v0, v6, :cond_a

    aget v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    add-int v5, v3, v4

    if-le v5, v0, :cond_d

    move v1, v2

    :cond_d
    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v2, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/a/d;->a(Lcn/jpush/android/a/d;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    sget-object v1, Lcn/jpush/android/a/f;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/a/d;->a(Lcn/jpush/android/a/d;Ljava/lang/Object;)V

    :cond_f
    iget-object v0, p0, Lcn/jpush/android/a/f;->a:Lcn/jpush/android/a/d;

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->e()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method
