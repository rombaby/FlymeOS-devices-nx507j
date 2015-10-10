.class public abstract Lcn/jpush/android/data/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final W:[Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/jpush/android/data/d;",
            ">;"
        }
    .end annotation
.end field

.field public D:I

.field public E:I

.field public F:I

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:I

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:Ljava/lang/String;

.field public R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field private a:Z

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:Z

.field public x:I

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1e

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "8 ApV\u000e1\u0002g\\K9MrWK<OrT\u000eu\u000f3"

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

    const/16 v9, 0x33

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

    const-string v1, "\n6Vz\\\u0005oN|R\u000f\u001cOta\u000e&\u0002>\u0013\u001e\'N)"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0003!Vc\tDz"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\n6Vz\\\u0005oN|R\u000f\u001dV~_\"8CtV90Q|F\u00196G`\u0013FuWa_;\'GuZ\u0013o"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u001d<Gdl\u00028ELF\u00199"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\r N\u007fl\u00186PvV\u0005"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "Ms"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\n\n@a\\\u0018\"Ga"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u00026M}l\u001e\'N"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u00028CtV4 P\u007fl\u0007<Qg"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\n%RLG\u0012%G"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u0006&ELZ\u00062}fA\u0007"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u00026M}"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u000f0QxG\u0004%}`[\u0004\"}p\\\u0005!G}G"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u001d<Gdl\u00030Kt[\u001f"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\n9N|D46C}P\u000e9"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u0018,QLE\u00020U"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u0005\nA|]\u001f0Lg"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u0005\nGkG\u00194Q"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u0005\nVzG\u00070"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u0005\nD\u007fR\u000c"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u000f0QxG\u0004%}`[\u0004\"}gJ\u001b0"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u00064PtZ\u0005\nV|C"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u0005\nK~R\u000c0}fA\u0007"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u00064PtZ\u0005\nNvU\u001f"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\n1}p\\\u0005!G}G"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "M Kw\u000e"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u0019<Ltl\u0006"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "\u001d<Gdl\u001c<Fg["

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u000f:U}_\u00044F3U\n<NvW\uff67<OrT\u000e\u0000P\u007f\tK"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    return-void

    :pswitch_1d
    const/16 v9, 0x6b

    goto/16 :goto_2

    :pswitch_1e
    const/16 v9, 0x55

    goto/16 :goto_2

    :pswitch_1f
    const/16 v9, 0x22

    goto/16 :goto_2

    :pswitch_20
    const/16 v9, 0x13

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/jpush/android/data/d;->g:I

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->s:Z

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->u:Z

    iput-object v2, p0, Lcn/jpush/android/data/d;->v:Ljava/util/List;

    iput v1, p0, Lcn/jpush/android/data/d;->D:I

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->L:Z

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->M:Z

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->N:Z

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->a:Z

    iput-boolean v0, p0, Lcn/jpush/android/data/d;->O:Z

    iput v1, p0, Lcn/jpush/android/data/d;->P:I

    iput-object v2, p0, Lcn/jpush/android/data/d;->R:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/data/d;->S:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/d;)Lcn/jpush/android/data/d;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lcn/jpush/android/data/d;->v:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcn/jpush/android/data/d;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcn/jpush/android/data/d;->R:Ljava/util/ArrayList;

    iget-object v0, p1, Lcn/jpush/android/data/d;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x5

    const-wide/16 v6, 0x1388

    const/4 v5, 0x4

    invoke-static {v0, v4, v6, v7, v5}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-static {p0, v6}, Lcn/jpush/android/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, p0}, Lcn/jpush/android/util/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcn/jpush/android/data/d;->R:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    :goto_2
    return-object p1

    :cond_0
    :try_start_1
    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v2, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    const/16 v3, 0x3fc

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v0, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    const/16 v1, 0x3f6

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    const/4 p1, 0x0

    goto :goto_2
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    const-string v1, ""

    invoke-static {p0}, Lcn/jpush/android/data/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    const-wide/16 v2, 0x1388

    const/4 v4, 0x4

    invoke-static {p0, v0, v2, v3, v4}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p1}, Lcn/jpush/android/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p3}, Lcn/jpush/android/util/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3fc

    invoke-static {p3, p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, p3}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static a(Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    invoke-static {p2}, Lcn/jpush/android/data/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v5, 0x5

    const-wide/16 v6, 0x1388

    const/4 v8, 0x4

    invoke-static {v3, v5, v6, v7, v8}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_0
    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcn/jpush/android/util/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcn/jpush/android/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0, v5, p1}, Lcn/jpush/android/util/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    move v1, v2

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p3}, Lcn/jpush/android/util/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x3fc

    invoke-static {p1, v3}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v0, v1

    :cond_4
    return v0

    :cond_5
    move-object v3, v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/data/d;->V:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/jpush/android/data/d;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcn/jpush/android/data/d;->o:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcn/jpush/android/data/d;->o:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;Lorg/json/JSONObject;)Z
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcn/jpush/android/data/d;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 9

    const/16 v8, 0x3e4

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v0, v0, v3

    const/4 v3, 0x3

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/d;->p:I

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/jpush/android/data/d;->q:Z

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcn/jpush/android/data/d;->O:Z

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v0, v0, v3

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/d;->z:I

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v0, v0, v3

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/d;->x:I

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v0, v0, v3

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->y:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v0, v0, v3

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v0, v0, v3

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->r:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v0, v0, v3

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->S:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v0, v0, v3

    const-string v3, ""

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->l:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/data/d;->D:I

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x1c

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/data/d;->E:I

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/data/d;->F:I

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/jpush/android/data/d;->G:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/data/d;->I:I

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcn/jpush/android/data/d;->J:I

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/d;->K:I

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/data/d;->S:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v6, 0x1a

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jpush/android/util/a;->r(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/d;->t:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/data/d;->v:Ljava/util/List;

    move v0, v2

    :goto_2
    if-ge v0, v5, :cond_4

    iget-object v6, p0, Lcn/jpush/android/data/d;->v:Ljava/util/List;

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcn/jpush/android/data/d;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    iget-object v0, p0, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcn/jpush/android/data/d;->h:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-static {v0, v8, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_6
    :goto_4
    return v2

    :cond_7
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    iget-object v0, p0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-static {v0, v8, p1}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/data/d;->W:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-static {p1, v0, p2, v3}, Lcn/jpush/android/data/p;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcn/jpush/android/data/d;->h:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcn/jpush/android/data/d;->e:Z

    if-eqz v0, :cond_6

    move v2, v1

    goto :goto_4

    :cond_a
    iget-boolean v2, p0, Lcn/jpush/android/data/d;->h:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcn/jpush/android/data/d;->e:Z

    if-eqz v2, :cond_b

    iput-boolean v1, p0, Lcn/jpush/android/data/d;->a:Z

    :cond_b
    invoke-virtual {p0, p1, v0}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v2

    goto :goto_4
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcn/jpush/android/data/d;->o:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/jpush/android/data/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcn/jpush/android/data/l;

    iget-object v0, p0, Lcn/jpush/android/data/l;->ac:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcn/jpush/android/data/y;

    iget-object v0, p0, Lcn/jpush/android/data/y;->W:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcn/jpush/android/data/d;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/data/d;->V:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/jpush/android/data/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcn/jpush/android/data/l;

    iget-object v0, p0, Lcn/jpush/android/data/l;->ah:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcn/jpush/android/data/y;

    iget-object v0, p0, Lcn/jpush/android/data/y;->aa:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/data/d;->a:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p0}, Lcn/jpush/android/data/d;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p0, Lcn/jpush/android/data/l;

    iget-object v1, p0, Lcn/jpush/android/data/l;->ae:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcn/jpush/android/data/d;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast p0, Lcn/jpush/android/data/y;

    iget-object v1, p0, Lcn/jpush/android/data/y;->Z:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final h()Lcn/jpush/android/data/e;
    .locals 1

    new-instance v0, Lcn/jpush/android/data/e;

    invoke-direct {v0, p0, p0}, Lcn/jpush/android/data/e;-><init>(Lcn/jpush/android/data/d;Lcn/jpush/android/data/d;)V

    return-object v0
.end method
