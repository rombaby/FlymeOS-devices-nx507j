.class public abstract Lcn/jpush/android/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final A:[Ljava/lang/String;

.field public static b:I

.field public static c:Z

.field private static f:Z


# instance fields
.field public a:Ljava/lang/String;

.field protected d:Z

.field private e:Z

.field private g:I

.field private h:Lcn/jpush/android/a/b;

.field private i:Lcn/jpush/android/a/g;

.field private j:Landroid/content/Context;

.field private k:[I

.field private l:Lcn/jpush/android/a/f;

.field private m:Z

.field private final n:Landroid/content/BroadcastReceiver;

.field private o:J

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcn/jpush/android/a/i;

.field private t:I

.field private final u:Ljava/util/Date;

.field private v:Lorg/json/JSONArray;

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "7\u0012\u000f@m?\u0018EBg$\u0011\u0002Aq?\u0013\u0005\u001cC\u0015?.aQ\t:\"|G\t0$qC\u00025$|"

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

    const/4 v9, 0x2

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

    const-string v1, "7\u0012\u000f@m?\u0018EBg$\u0011\u0002Aq?\u0013\u0005\u001cA\u001e=%uG\t+\"tK\t/?sV\u0013"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "7\u0010\u0007"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "7\u0012\u000f@m?\u0018EBg$\u0011\u0002Aq?\u0013\u0005\u001cC\u0015?.aQ\t+\"tK\t/?sV\u0013"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "7\u0012\u000f@m?\u0018EBg$\u0011\u0002Aq?\u0013\u0005\u001cC\u0015?.aQ\t?$sP\u000594~M\u0015=?{M\u0018"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "7\u0012\u000f@m?\u0018E\\g\"R\u001c[d?R<{D\u001f#8fC\u000294qJ\u00172,wF"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "7\u0012\u000f@m?\u0018E\\g\"R\u001c[d?R8qC\u0018#9wQ\u00030?a"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/16 v0, 0x3a98

    sput v0, Lcn/jpush/android/a/d;->b:I

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/a/d;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a/d;->f:Z

    return-void

    :pswitch_6
    const/16 v9, 0x56

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x7c

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x6b

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x32

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcn/jpush/android/a/d;->e:Z

    iput-boolean v1, p0, Lcn/jpush/android/a/d;->q:Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/a/d;->u:Ljava/util/Date;

    iput-boolean v1, p0, Lcn/jpush/android/a/d;->x:Z

    new-instance v0, Lcn/jpush/android/a/e;

    invoke-direct {v0, p0, v1}, Lcn/jpush/android/a/e;-><init>(Lcn/jpush/android/a/d;B)V

    iput-object v0, p0, Lcn/jpush/android/a/d;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    new-instance v0, Lcn/jpush/android/a/b;

    invoke-direct {v0, p1}, Lcn/jpush/android/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/a/d;->h:Lcn/jpush/android/a/b;

    new-instance v0, Lcn/jpush/android/a/i;

    invoke-direct {v0, p1}, Lcn/jpush/android/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    new-instance v0, Lcn/jpush/android/a/g;

    invoke-direct {v0, p1}, Lcn/jpush/android/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcn/jpush/android/a/d;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/jpush/android/a/d;->a:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcn/jpush/android/a/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcn/jpush/android/a/d;->x:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/jpush/android/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-boolean p4, p0, Lcn/jpush/android/a/d;->e:Z

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/a/d;I)I
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcn/jpush/android/a/d;->p:I

    return v0
.end method

.method static synthetic a(Lcn/jpush/android/a/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/jpush/android/a/d;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lcn/jpush/android/a/d;Ljava/lang/Object;)V
    .locals 3

    sget-boolean v0, Lcn/jpush/android/a/d;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {p0, v2}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {p0, v2}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p0, v2}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p0, v2}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/a/d;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/a/d;->m:Z

    return v0
.end method

.method static synthetic b(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/b;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->h:Lcn/jpush/android/a/b;

    return-object v0
.end method

.method static synthetic c(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/f;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->l:Lcn/jpush/android/a/f;

    return-object v0
.end method

.method static synthetic d(Lcn/jpush/android/a/d;)I
    .locals 1

    iget v0, p0, Lcn/jpush/android/a/d;->p:I

    return v0
.end method

.method static synthetic e(Lcn/jpush/android/a/d;)Lcn/jpush/android/a/i;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    return-object v0
.end method

.method static synthetic f(Lcn/jpush/android/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/d;->m:Z

    return v0
.end method

.method static synthetic g(Lcn/jpush/android/a/d;)I
    .locals 1

    iget v0, p0, Lcn/jpush/android/a/d;->g:I

    return v0
.end method

.method static synthetic h(Lcn/jpush/android/a/d;)[I
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->k:[I

    return-object v0
.end method

.method static synthetic i(Lcn/jpush/android/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/d;->x:Z

    return v0
.end method

.method static synthetic j(Lcn/jpush/android/a/d;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->n:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic k(Lcn/jpush/android/a/d;)J
    .locals 2

    iget-wide v0, p0, Lcn/jpush/android/a/d;->o:J

    return-wide v0
.end method

.method static synthetic l(Lcn/jpush/android/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/jpush/android/a/d;->r:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/a/d;->v:Lorg/json/JSONArray;

    return-void
.end method

.method public final b()Lorg/json/JSONArray;
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/a/d;->h:Lcn/jpush/android/a/b;

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/d;->h:Lcn/jpush/android/a/b;

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->b()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/a/d;->v:Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public final b(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    return-void
.end method

.method public final c()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x1

    iget v0, p0, Lcn/jpush/android/a/d;->p:I

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/jpush/android/a/d;->p:I

    iget-object v0, p0, Lcn/jpush/android/a/d;->l:Lcn/jpush/android/a/f;

    invoke-virtual {v0, v2}, Lcn/jpush/android/a/f;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/a/d;->r:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcn/jpush/android/a/d;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/a/d;->l:Lcn/jpush/android/a/f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcn/jpush/android/a/f;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/a/d;->o:J

    sget-boolean v0, Lcn/jpush/android/a/d;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/a/d;->l:Lcn/jpush/android/a/f;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v4, v2, v3}, Lcn/jpush/android/a/f;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcn/jpush/android/a/d;->r:Z

    goto :goto_0
.end method

.method public final f()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcn/jpush/android/service/PushService;->A:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v6, Lcn/jpush/android/service/PushService;->A:Z

    iput-boolean v5, p0, Lcn/jpush/android/a/d;->e:Z

    iput-boolean v5, p0, Lcn/jpush/android/a/d;->x:Z

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/jpush/android/a/d;->h:Lcn/jpush/android/a/b;

    invoke-virtual {v0}, Lcn/jpush/android/a/b;->c()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/d;->v:Lorg/json/JSONArray;

    :goto_1
    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iput-object v3, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/a/d;->y:Ljava/lang/String;

    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcn/jpush/android/a/d;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/jpush/android/a/d;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/a/d;->d()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iput-object v3, p0, Lcn/jpush/android/a/d;->v:Lorg/json/JSONArray;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcn/jpush/android/a/d;->w:Z

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcn/jpush/android/a/d;->e:Z

    if-nez v0, :cond_7

    iput-object v3, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iput-object v3, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Lcn/jpush/android/a/d;->x:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/a/d;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/a/d;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iput-boolean v6, p0, Lcn/jpush/android/a/d;->q:Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->c()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/d;->z:Lorg/json/JSONArray;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->b()V

    const-string v0, ""

    iget-object v1, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v1}, Lcn/jpush/android/a/g;->d()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v2}, Lcn/jpush/android/a/g;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iput v5, p0, Lcn/jpush/android/a/d;->t:I

    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/a/d;->y:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final g()V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcn/jpush/android/service/PushService;->A:Z

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/a/d;->i:Lcn/jpush/android/a/g;

    invoke-virtual {v0}, Lcn/jpush/android/a/g;->c()V

    :cond_0
    iget-boolean v0, p0, Lcn/jpush/android/a/d;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    sget-object v1, Lcn/jpush/android/a/d;->A:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    iget v0, p0, Lcn/jpush/android/a/d;->p:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcn/jpush/android/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/a/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/jpush/android/a/d;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/a/d;->l:Lcn/jpush/android/a/f;

    iput v3, p0, Lcn/jpush/android/a/d;->p:I

    iget-boolean v0, p0, Lcn/jpush/android/a/d;->w:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcn/jpush/android/a/d;->d:Z

    iget-object v0, p0, Lcn/jpush/android/a/d;->s:Lcn/jpush/android/a/i;

    invoke-virtual {v0}, Lcn/jpush/android/a/i;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_2
    return-void
.end method
