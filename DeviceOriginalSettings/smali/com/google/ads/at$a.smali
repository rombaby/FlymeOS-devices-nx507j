.class Lcom/google/ads/at$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/at$a;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences$Editor;)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/at$a;->a:Ljava/lang/ref/WeakReference;

    .line 50
    iput-object p2, p0, Lcom/google/ads/at$a;->b:Landroid/content/SharedPreferences$Editor;

    .line 51
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/ads/at$a;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/at$a;->b:Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/at$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v8, v0

    .line 67
    if-nez v8, :cond_0

    .line 68
    const-string v2, "Activity was null while making a doritos cookie request."

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 75
    sget-object v3, Lcom/google/ads/as;->a:Landroid/net/Uri;

    sget-object v4, Lcom/google/ads/as;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 81
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    :goto_1
    invoke-direct {p0, v8}, Lcom/google/ads/at$a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 91
    const-string v4, "drt"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v2, "drt_ts"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    const-string v3, "An unknown error occurred while sending a doritos request."

    invoke-static {v3, v2}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_1
    const-string v2, "Google+ app not installed, not storing doritos cookie"

    invoke-static {v2}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    move-object v2, v9

    goto :goto_1

    .line 95
    :cond_2
    const-string v2, "drt"

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v2, "drt_ts"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
