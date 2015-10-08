.class public Lcom/mokee/volley/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final cacheEntry:Lcom/mokee/volley/Cache$Entry;

.field public final error:Lcom/mokee/volley/VolleyError;

.field public intermediate:Z

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mokee/volley/VolleyError;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/volley/Response;->intermediate:Z

    iput-object v1, p0, Lcom/mokee/volley/Response;->result:Ljava/lang/Object;

    iput-object v1, p0, Lcom/mokee/volley/Response;->cacheEntry:Lcom/mokee/volley/Cache$Entry;

    iput-object p1, p0, Lcom/mokee/volley/Response;->error:Lcom/mokee/volley/VolleyError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/mokee/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/volley/Response;->intermediate:Z

    iput-object p1, p0, Lcom/mokee/volley/Response;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mokee/volley/Response;->cacheEntry:Lcom/mokee/volley/Cache$Entry;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mokee/volley/Response;->error:Lcom/mokee/volley/VolleyError;

    return-void
.end method

.method public static error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mokee/volley/VolleyError;",
            ")",
            "Lcom/mokee/volley/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mokee/volley/Response;

    invoke-direct {v0, p0}, Lcom/mokee/volley/Response;-><init>(Lcom/mokee/volley/VolleyError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/mokee/volley/Cache$Entry;",
            ")",
            "Lcom/mokee/volley/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mokee/volley/Response;

    invoke-direct {v0, p0, p1}, Lcom/mokee/volley/Response;-><init>(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Response;->error:Lcom/mokee/volley/VolleyError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
