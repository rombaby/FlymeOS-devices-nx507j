.class public Lcom/mokee/volley/toolbox/AndroidAuthenticator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/toolbox/Authenticator;


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/accounts/Account;

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, "-\u0000\u001d,e0"

    const/4 v0, -0x1

    move-object v7, v6

    move-object v8, v6

    move v6, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v9, v5

    if-gt v9, v2, :cond_2

    move v10, v1

    :cond_0
    move-object v11, v5

    move v12, v10

    move v15, v9

    move-object v9, v5

    move v5, v15

    :goto_1
    aget-char v14, v9, v10

    rem-int/lit8 v13, v12, 0x5

    packed-switch v13, :pswitch_data_0

    const/16 v13, 0xb

    :goto_2
    xor-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    if-nez v5, :cond_1

    move-object v9, v11

    move v12, v10

    move v10, v5

    goto :goto_1

    :cond_1
    move v9, v5

    move-object v5, v11

    :goto_3
    if-gt v9, v10, :cond_0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    packed-switch v0, :pswitch_data_1

    aput-object v5, v7, v6

    const-string v0, "%\u001b\u001d!\u007f+\u0005\u000c\'"

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "-\u0000\u001d,e0"

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, "\u0003\u0001\u001die1\u0002\u0005ij1\u001a\u0001i\u007f+\u0005\u000c\'+\"\u0001\u001bi\u007f=\u001e\u000cs+"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "\u0001\u001c\u001b&yd\u0019\u0001 g!N\u001b,\u007f6\u0007\u000c?b*\tI(~0\u0006I=d/\u000b\u0007"

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->e:[Ljava/lang/String;

    return-void

    :pswitch_4
    const/16 v13, 0x44

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x6e

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x69

    goto :goto_2

    :pswitch_7
    const/16 v13, 0x49

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mokee/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->d:Z

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->d:Z

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :try_start_2
    sget-object v1, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->e:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    new-instance v1, Lcom/mokee/volley/AuthFailureError;

    invoke-direct {v1, v0}, Lcom/mokee/volley/AuthFailureError;-><init>(Landroid/content/Intent;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/mokee/volley/AuthFailureError;

    sget-object v2, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->e:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Lcom/mokee/volley/AuthFailureError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    throw v0

    :cond_0
    sget-object v1, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-nez v4, :cond_2

    :try_start_4
    new-instance v0, Lcom/mokee/volley/AuthFailureError;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->e:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mokee/volley/AuthFailureError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    throw v0

    :cond_2
    return-object v4
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/AndroidAuthenticator;->b:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
