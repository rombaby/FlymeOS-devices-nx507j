.class public final Lcn/jpush/android/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Landroid/content/Context;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field private static m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x13

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "o7Gy~_7"

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

    const/16 v9, 0x17

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

    const-string v1, "i<PwgY1Ajs\u0006rSn~P7Q/cSrRjc\u001c1@}eY<A/vL\"Yft]&\\`y\u001c;[ix"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "V3Cn9R7A!gN7Sjeu\u0002C9VX6GjdO7F"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "r\u001d\u0015yrN!\\`y\u007f=Qj7S \u0015yrN!\\`yr3Xj7X7SfyY6\u0015fy\u001c?Ta~Z7F{9"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "Q7Ans]&T57\u007f3[/yS&\u0015hrHrt\u007fgP;VncU=[/~_=[#7E=@/`U>Y/uYr[`c\u001c3Wcr\u001c&Z/dT=B/yS&\\i~_3AfxRrQzr\u001c&Z/cT7\u0015ngL>\\lvH;Za7U1Za7U!\u0015abP>\u001b"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "v\u0002`\\_c\u0013e_\\y\u000b"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0010recr]!P/pY&\u0015vxI \u0015NgL9Pv7Z Zb7L=G{vPs"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "Q7Ans]&T57_:TayY>\u0015\"7R=A/sY4\\arXr\\a7Q3[fqY!A"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "u<Cn{U6\u0015ngL\u0019Pv7\u0006r"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "r\u001d\u0015brH3\u0015kvH3\u0015krZ;[js\u001c;[/z]<\\irO&\u001b"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "Q7Ans]&T57]\"EDrEr\u0018/"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "Z3Y|r"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "H @j"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "v\u0002`\\_c\u0011}NYr\u0017y"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "V3Cn9R7A!gN7Sjeu\u0002C;DH3Vd"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "v\u0002@|\u007f\u001c1TayS&\u0015mr\u001c;[fcU3YfmY6\u0015lxQ\"PcrH7Yv7X\'P/cSr{Z[prT\u007fgu<S`9"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "Q7Ans]&T57\u007f3[/yS&\u0015hrHrt\u007fgP;VncU=[FyZ="

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "Q7Ans]&T57]\"EDrEr\u0018/yS&\u0015krZ;[js\u001c;[/z]<\\irO&"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "Q7Ans]&T57_:TayY>\u0015\"7"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jpush/android/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a;->i:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a;->j:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a;->k:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a;->l:Z

    return-void

    :pswitch_12
    const/16 v9, 0x3c

    goto/16 :goto_2

    :pswitch_13
    const/16 v9, 0x52

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0x35

    goto/16 :goto_2

    :pswitch_15
    const/16 v9, 0xf

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
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
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 9

    const/16 v6, 0x1e

    const/16 v8, 0xe

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcn/jpush/android/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ab;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jpush/android/a;->b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v4, Lcn/jpush/android/a;->g:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcn/jpush/android/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_2

    sget-object v0, Lcn/jpush/android/a;->h:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/a;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_3

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcn/jpush/android/util/a;->h(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/api/k;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcn/jpush/android/api/k;->a(Landroid/app/Application;)V

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/a;->b:Ljava/lang/String;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcn/jpush/android/a;->a:I

    sget v0, Lcn/jpush/android/a;->a:I

    if-nez v0, :cond_4

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v4, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-static {v0, v4}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/a;->c:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v0, :cond_a

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v4, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v0, v4}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :try_start_2
    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    sget-object v4, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    invoke-static {v0, v4}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v4, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5, v0}, Lcn/jpush/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_2

    :cond_6
    sget-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_7

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_8

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v8

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    sget-object v0, Lcn/jpush/android/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    sget-object v0, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static b(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcn/jpush/android/a;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
