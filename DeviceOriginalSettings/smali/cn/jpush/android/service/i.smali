.class final Lcn/jpush/android/service/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/jpush/android/service/g;


# direct methods
.method constructor <init>(Lcn/jpush/android/service/g;J)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/i;->b:Lcn/jpush/android/service/g;

    iput-wide p2, p0, Lcn/jpush/android/service/i;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v5, 0x1

    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/i;->b:Lcn/jpush/android/service/g;

    invoke-static {v0}, Lcn/jpush/android/service/g;->a(Lcn/jpush/android/service/g;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/jpush/android/data/i;

    iget-object v1, p0, Lcn/jpush/android/service/i;->b:Lcn/jpush/android/service/g;

    invoke-static {v1}, Lcn/jpush/android/service/g;->a(Lcn/jpush/android/service/g;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jpush/android/data/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcn/jpush/android/service/g;->a(Lcn/jpush/android/data/i;)Lcn/jpush/android/data/i;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/data/i;->a()V

    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v1

    iget-wide v2, p0, Lcn/jpush/android/service/i;->a:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcn/jpush/android/data/i;->a(JI)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/data/i;->a(Landroid/database/Cursor;Lcn/jpush/android/data/k;)V

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/data/k;->c()I

    move-result v1

    if-ne v5, v1, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v1

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/android/data/k;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jpush/android/data/k;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v8

    invoke-virtual {v8}, Lcn/jpush/android/data/k;->f()J

    move-result-wide v8

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v10

    invoke-virtual {v10}, Lcn/jpush/android/data/k;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/i;->b(JIIILjava/lang/String;JJ)Z

    :goto_0
    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/data/i;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/data/k;->b()I

    move-result v1

    if-le v1, v5, :cond_3

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v1

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/android/data/k;->a()J

    move-result-wide v2

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jpush/android/data/k;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jpush/android/data/k;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v8

    invoke-virtual {v8}, Lcn/jpush/android/data/k;->f()J

    move-result-wide v8

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v10

    invoke-virtual {v10}, Lcn/jpush/android/data/k;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/i;->b(JIIILjava/lang/String;JJ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/data/k;->b()I

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jpush/android/data/k;->f()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_5

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    :try_start_4
    iget-object v1, p0, Lcn/jpush/android/service/i;->b:Lcn/jpush/android/service/g;

    iget-object v2, p0, Lcn/jpush/android/service/i;->b:Lcn/jpush/android/service/g;

    invoke-static {v2}, Lcn/jpush/android/service/g;->a(Lcn/jpush/android/service/g;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jpush/android/data/k;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/jpush/android/service/i;->b:Lcn/jpush/android/service/g;

    invoke-static {v4}, Lcn/jpush/android/service/g;->b(Lcn/jpush/android/service/g;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcn/jpush/android/service/g;->a(Lcn/jpush/android/service/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/g;->a()Lcn/jpush/android/data/i;

    move-result-object v1

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jpush/android/data/k;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v7

    invoke-virtual {v7}, Lcn/jpush/android/data/k;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v8

    invoke-virtual {v8}, Lcn/jpush/android/data/k;->f()J

    move-result-wide v8

    invoke-static {}, Lcn/jpush/android/service/g;->b()Lcn/jpush/android/data/k;

    move-result-object v10

    invoke-virtual {v10}, Lcn/jpush/android/data/k;->e()J

    move-result-wide v10

    invoke-virtual/range {v1 .. v11}, Lcn/jpush/android/data/i;->b(JIIILjava/lang/String;JJ)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_2
.end method
