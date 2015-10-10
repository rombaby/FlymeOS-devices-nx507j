.class public Lcn/jpush/android/ui/PushActivity;
.super Landroid/app/Activity;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private a:Lcn/jpush/android/data/d;

.field private b:Ljava/lang/String;

.field private c:Lcn/jpush/android/data/g;

.field private d:Lcn/jpush/android/ui/a;

.field private e:Z

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/os/Handler;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xd

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "Ky\u000c\u001c\u001dxx\u0016\u00025ou"

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

    const/16 v9, 0x5c

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

    const-string v1, "ra\u0018&5xd\u000f\u0001/sN\u000b\u001a\u001ezo\u0014"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "Lm\r\u001a5uk^T\u000bic\u0011\u0013|Z~\u0018\u0007};O\u0013\u001b/~,/\u0001/sM\u001c\u00005me\u000b\r}"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "q|\n\u00074D~\u0016\u00174ky\u000c\u001c\u0003zo\u000b\u001d3un\u001e\u0006\u0003wm\u0006\u001b)o"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "rh"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "wm\u0006\u001b)o"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "yc\u001b\r"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "oz-\u001d?s|\n\u00074Oe\u000b\u00189"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "Rb\t\u00150rh_\u0019/|,\u000b\r,~,\u000b\u001b|hd\u0010\u0003|6,"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "r\u007f*\u00048zx\u001a\"9i\u007f\u0016\u001b2"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "zb\u001b\u00063rhQ\u001d2oi\u0011\u0000rzo\u000b\u001d3u\"25\u0015U"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "zb\u001b\u00063rhQ\u001d2oi\u0011\u0000rxm\u000b\u0011;t~\u0006Z\u0010ZY17\u0014^^"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "}e\u0013\u0011f4#"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    return-void

    :pswitch_c
    const/16 v9, 0x1b

    goto/16 :goto_2

    :pswitch_d
    const/16 v9, 0xc

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x7f

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x74

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
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
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/ui/PushActivity;->e:Z

    new-instance v0, Lcn/jpush/android/ui/i;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/i;-><init>(Lcn/jpush/android/ui/PushActivity;)V

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    new-instance v0, Lcn/jpush/android/ui/j;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/j;-><init>(Lcn/jpush/android/ui/PushActivity;)V

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/ui/PushActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/PushActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    sget-object v0, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v0, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget-object v0, v0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget v0, v0, Lcn/jpush/android/data/d;->o:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget v1, v1, Lcn/jpush/android/data/d;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    invoke-static {p0, v0, v3}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;I)V

    :cond_2
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcn/jpush/android/ui/PushActivity;)Lcn/jpush/android/data/d;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    return-object v0
.end method

.method static synthetic c(Lcn/jpush/android/ui/PushActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcn/jpush/android/ui/PushActivity;)V
    .locals 8

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    check-cast v0, Lcn/jpush/android/data/s;

    iget-object v1, v0, Lcn/jpush/android/data/s;->a:Ljava/lang/String;

    iget v2, v0, Lcn/jpush/android/data/s;->X:I

    if-nez v2, :cond_0

    invoke-static {v1}, Lcn/jpush/android/data/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    iget-boolean v3, v0, Lcn/jpush/android/data/s;->q:Z

    if-eqz v3, :cond_2

    new-instance v3, Lcn/jpush/android/ui/a;

    invoke-direct {v3, p0, v0}, Lcn/jpush/android/ui/a;-><init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    iput-object v3, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    new-instance v3, Lcn/jpush/android/ui/g;

    invoke-direct {v3, p0}, Lcn/jpush/android/ui/g;-><init>(Lcn/jpush/android/ui/PushActivity;)V

    invoke-virtual {v0, v3}, Lcn/jpush/android/ui/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcn/jpush/android/ui/PushActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    invoke-virtual {v0, v2}, Lcn/jpush/android/ui/a;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Ljava/lang/String;

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcn/jpush/android/data/g;

    iget-object v3, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    invoke-direct {v0, p0, v3}, Lcn/jpush/android/data/g;-><init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    invoke-virtual {v0, v2, v5, v6}, Lcn/jpush/android/data/g;->a(Ljava/lang/String;ZZ)V

    :goto_2
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    invoke-virtual {p0, v0}, Lcn/jpush/android/ui/PushActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    new-instance v1, Lcn/jpush/android/ui/h;

    invoke-direct {v1, p0}, Lcn/jpush/android/ui/h;-><init>(Lcn/jpush/android/ui/PushActivity;)V

    invoke-virtual {v0, v1}, Lcn/jpush/android/data/g;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    invoke-virtual {v0, v1, v5, v6}, Lcn/jpush/android/data/g;->a(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    invoke-static {p0, v0, v5}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;I)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    goto :goto_1
.end method

.method static synthetic e(Lcn/jpush/android/ui/PushActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcn/jpush/android/ui/PushActivity;)Lcn/jpush/android/ui/a;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    return-object v0
.end method

.method static synthetic g(Lcn/jpush/android/ui/PushActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/ui/PushActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-boolean v0, p0, Lcn/jpush/android/ui/PushActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Ljava/lang/String;

    const/16 v1, 0x3f0

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->b:Ljava/lang/String;

    const/16 v1, 0x3ee

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x400

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    iput-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget v0, v0, Lcn/jpush/android/data/d;->z:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iput v5, v0, Lcn/jpush/android/data/d;->z:I

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iput v4, v0, Lcn/jpush/android/data/d;->p:I

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    invoke-static {p0, v0}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    check-cast v0, Lcn/jpush/android/data/s;

    iget-object v2, v0, Lcn/jpush/android/data/s;->W:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    sget-object v3, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v1, v1, v3

    sget-object v3, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/jpush/android/ui/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v3, v3, v5

    sget-object v4, Lcn/jpush/android/ui/PushActivity;->z:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/PushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jpush/android/ui/PushActivity;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v5}, Lcn/jpush/android/ui/PushActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->a:Lcn/jpush/android/data/d;

    iget-boolean v0, v0, Lcn/jpush/android/data/d;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/ui/PushActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->c:Lcn/jpush/android/data/g;

    invoke-virtual {v0}, Lcn/jpush/android/data/g;->a()V

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    invoke-virtual {v0}, Lcn/jpush/android/ui/a;->c()V

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    invoke-virtual {v0}, Lcn/jpush/android/ui/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/PushActivity;->d:Lcn/jpush/android/ui/a;

    invoke-virtual {v0}, Lcn/jpush/android/ui/a;->b()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/jpush/android/ui/PushActivity;->a()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jpush/android/ui/PushActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
