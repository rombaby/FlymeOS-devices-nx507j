.class public Lcn/jpush/android/ui/ListViewActivity;
.super Landroid/app/Activity;


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private a:Lcn/jpush/android/data/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "8\u001eVg"

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

    const/16 v5, 0x41

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

    sput-object v0, Lcn/jpush/android/ui/ListViewActivity;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x5a

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x71

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x32

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x1e

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

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/ListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/ui/ListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/ui/ListViewActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/d;

    iput-object v0, p0, Lcn/jpush/android/ui/ListViewActivity;->a:Lcn/jpush/android/data/d;

    iget-object v0, p0, Lcn/jpush/android/ui/ListViewActivity;->a:Lcn/jpush/android/data/d;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v1, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcn/jpush/android/ui/ListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, v0, Lcn/jpush/android/data/d;->C:Ljava/util/List;

    new-instance v2, Lcn/jpush/android/ui/f;

    const/high16 v3, -0x80000000

    invoke-direct {v2, p0, v3, v0}, Lcn/jpush/android/ui/f;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcn/jpush/android/ui/e;

    invoke-direct {v2, p0, v0}, Lcn/jpush/android/ui/e;-><init>(Lcn/jpush/android/ui/ListViewActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/ListViewActivity;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    goto :goto_0
.end method
