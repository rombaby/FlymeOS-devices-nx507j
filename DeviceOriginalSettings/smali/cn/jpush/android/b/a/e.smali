.class public final Lcn/jpush/android/b/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "*\u001d\u0017}D\u001d\u0001\u001b+L\n\u000cR3D\u0013\u0010R4V^\u001c\u001c+D\u0012\u001c\u0016q\u00059\u001c\u00048\u0005\u000b\u0005\\s"

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

    const/16 v9, 0x25

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

    const-string v1, "\u001d\u001b\\7U\u000b\u0006\u001asD\u0010\u0011\u00002L\u001a[3\u001eq7#;\t|!%3\u000fd3"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "SX_p\u0008^\u0005\u0013/D\u0013\u0006Rg\u0005"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "*\u001d\u0017}D\u001d\u0001\u001b+L\n\u000cR3D\u0013\u0010R4V^\u001b\u00071I^\u001a\u0000}@\u0013\u0005\u0006$\t^2\u001b+@^\u0000\u0002s\u000b"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u001f\u0016\u00064J\u0010U_p\u0008^\u0006\u0006<W\n4\u0011)L\u0008\u001c\u0006$g\u0007;\u00130@SX_p\u0008SX_<F\n\u001c\u00044Q\u0007;\u00130@^OR"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "-\u000c\u0001)@\u00134\u001e8W\n\"\u0017?s\u0017\u0010\u0005\u001eD\u0012\u0019\u0010<F\u0015"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    return-void

    :pswitch_5
    const/16 v9, 0x7e

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x75

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x72

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x5d

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

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/b/a/e;->a:Landroid/content/Context;

    iput-object v0, p0, Lcn/jpush/android/b/a/e;->b:Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/jpush/android/b/a/e;->c:Landroid/webkit/WebView;

    iput-object v0, p0, Lcn/jpush/android/b/a/e;->d:Landroid/widget/ImageButton;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iput-object p1, p0, Lcn/jpush/android/b/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/b/a/e;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcn/jpush/android/b/a/e;->c:Landroid/webkit/WebView;

    iput-object p4, p0, Lcn/jpush/android/b/a/e;->d:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/b/a/e;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/jpush/android/b/a/e;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcn/jpush/android/b/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/b/a/e;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jpush/android/b/a/e;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/b/a/e;->d:Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/api/q;->a(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcn/jpush/android/b/a/e;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
